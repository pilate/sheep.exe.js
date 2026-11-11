/*
 * Rendering of the two "windows" of the original (main sheep + sub actor).
 *
 * Each actor is a 40x40 <canvas> fixed to the viewport.  Effects that the
 * original drew with raster operations are reproduced here:
 *   - mirroring: the original kept a horizontally flipped copy of each strip
 *   - beam (DS:2D92 / DS:2D7C): (background AND yellow) OR olive below the
 *     actor -> two blend-mode layers (multiply #ffff00, lighten #808000)
 *   - grid dissolve (DS:2D66): the sprite is erased by the grid sprite
 *     (frame 172) shifted diagonally by one pixel per step, accumulating.
 * Styles are only written when they change.
 */
import { FRAME_H, FRAME_W, type Sprite } from "./engine.ts";
import { OWN_NODE_ATTR } from "./platforms.ts";

/** Frame number of the grid used for the dissolve effect (DS:13D2 entry). */
export const GRID_FRAME = 172;
const PER_ROW = 16;

export interface ActorView extends Sprite {
  visible: boolean;
  beam: number;
  gridFx: number;
}

/** A positioned element that only touches the DOM when a value changes. */
class Layer<E extends HTMLElement> {
  readonly el: E;
  private last: Record<string, string> = {};

  constructor(el: E, base: string) {
    this.el = el;
    el.setAttribute(OWN_NODE_ATTR, "");
    el.style.cssText = `position:fixed;left:0;top:0;margin:0;padding:0;border:0;display:none;${base}`;
  }

  set(styles: Record<string, string>): void {
    for (const k in styles) {
      if (this.last[k] !== styles[k]) {
        this.last[k] = styles[k];
        this.el.style.setProperty(k, styles[k]);
      }
    }
  }
}

export class ActorRenderer {
  private readonly sheet: CanvasImageSource;
  private readonly scale: number;
  private readonly sprite: Layer<HTMLCanvasElement>;
  private readonly ctx: CanvasRenderingContext2D;
  /** Beam: (background AND yellow) OR olive. */
  private readonly beam: Layer<HTMLDivElement>[];
  private drawn = "";
  private gridCapture: { frame: number; mirrored: boolean } | null = null;

  constructor(sheet: CanvasImageSource, scale: number, interactive: boolean) {
    this.sheet = sheet;
    this.scale = scale;
    const canvas = document.createElement("canvas");
    canvas.width = FRAME_W;
    canvas.height = FRAME_H;
    this.sprite = new Layer(
      canvas,
      `width:${FRAME_W * scale}px;height:${FRAME_H * scale}px;image-rendering:pixelated;` +
        `touch-action:none;user-select:none;-webkit-user-select:none;background:transparent;` +
        `pointer-events:${interactive ? "auto" : "none"}`,
    );
    const ctx = canvas.getContext("2d");
    if (!ctx) throw new Error("sheep.exe.js: 2D canvas unavailable");
    ctx.imageSmoothingEnabled = false;
    this.ctx = ctx;
    this.beam = [
      ["#ffff00", "multiply"],
      ["#808000", "lighten"],
    ].map(
      ([color, mode]) =>
        new Layer(document.createElement("div"), `background:${color};mix-blend-mode:${mode};pointer-events:none`),
    );
  }

  get canvas(): HTMLCanvasElement {
    return this.sprite.el;
  }

  nodes(): HTMLElement[] {
    return [...this.beam.map((b) => b.el), this.sprite.el];
  }

  setZ(z: number): void {
    this.sprite.set({ "z-index": String(z) });
    this.beam.forEach((b, i) => b.set({ "z-index": String(z - 3 + i) }));
  }

  private drawFrame(frame: number, mirrored: boolean): void {
    const c = this.ctx;
    c.save();
    if (mirrored) c.setTransform(-1, 0, 0, 1, FRAME_W, 0);
    c.drawImage(
      this.sheet,
      (frame % PER_ROW) * FRAME_W,
      Math.floor(frame / PER_ROW) * FRAME_H,
      FRAME_W,
      FRAME_H,
      0,
      0,
      FRAME_W,
      FRAME_H,
    );
    c.restore();
  }

  update(v: ActorView): void {
    if (!v.visible) {
      this.sprite.set({ display: "none" });
      for (const b of this.beam) b.set({ display: "none" });
      this.gridCapture = null;
      return;
    }
    // grid dissolve: the original captures the sprite when the effect starts
    if (v.gridFx <= 0) this.gridCapture = null;
    else this.gridCapture ??= { frame: v.frame, mirrored: v.mirrored };
    const { frame, mirrored } = this.gridCapture ?? v;
    const key = `${frame}|${mirrored}|${v.gridFx}`;
    if (key !== this.drawn) {
      this.drawn = key;
      this.ctx.clearRect(0, 0, FRAME_W, FRAME_H);
      this.drawFrame(frame, mirrored);
      if (v.gridFx > 0) {
        const gx = (GRID_FRAME % PER_ROW) * FRAME_W;
        const gy = Math.floor(GRID_FRAME / PER_ROW) * FRAME_H;
        this.ctx.globalCompositeOperation = "destination-out";
        for (let k = 0; k < v.gridFx; k++) {
          this.ctx.drawImage(this.sheet, gx, gy, FRAME_W - k, FRAME_H, k, k, FRAME_W - k, FRAME_H);
        }
        this.ctx.globalCompositeOperation = "source-over";
      }
    }
    const s = this.scale;
    this.sprite.set({ display: "block", transform: `translate(${v.x * s}px,${v.y * s}px)` });
    for (const b of this.beam) {
      if (v.beam <= 0) b.set({ display: "none" });
      else
        b.set({
          display: "block",
          transform: `translate(${v.x * s}px,${(v.y + FRAME_H) * s}px)`,
          width: `${FRAME_W * s}px`,
          height: `${v.beam * s}px`,
        });
    }
  }
}
