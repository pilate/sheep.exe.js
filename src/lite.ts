/**
 * Entry point without inlined assets: point it at a copy of the extracted
 * `assets/` directory.
 *
 *   import { Sheep } from "sheep-exe-js/lite";
 *   new Sheep({ assetsUrl: "/static/sheep/" });
 */
import { SOUND_IDS } from "./generated/tables.ts";
import { Sheep as BaseSheep, type SheepAssets, type SheepOptions } from "./sheep.ts";

export interface LiteSheepOptions extends SheepOptions {
  /** Directory containing sprites.png, cursor.png and sounds/<id>.wav. */
  assetsUrl?: string;
}

export function assetsAt(base: string): SheepAssets {
  const b = base.endsWith("/") ? base : `${base}/`;
  const sounds: Record<number, string> = {};
  for (const id of SOUND_IDS) sounds[id] = `${b}sounds/${id}.wav`;
  return { sprites: `${b}sprites.png`, cursor: `${b}cursor.png`, sounds };
}

export class Sheep extends BaseSheep {
  constructor(options: LiteSheepOptions = {}) {
    const { assetsUrl = "assets/", ...rest } = options;
    super({ assets: assetsAt(assetsUrl), ...rest });
  }

  static spawn(count = 1, options: LiteSheepOptions = {}): Sheep[] {
    return Array.from({ length: count }, () => new Sheep(options));
  }
}

export { BaseSheep };
export type { SheepAssets, SheepOptions, SheepEvent } from "./sheep.ts";
export { Engine, MsRand } from "./engine.ts";
export { ACTIONS } from "./generated/tables.ts";
export default Sheep;
