/**
 * sheep.exe.js — the classic Sheep.exe ("Screen Mate Poo", Fujitsu 1995) as a
 * web-page library.  This entry point has all assets (extracted from the
 * original executable) inlined, so a single file is enough.
 *
 *   import { Sheep } from "sheep-exe-js";
 *   const sheep = new Sheep();          // appears and starts wandering
 *   sheep.action("Flame Dive");
 */
import { CURSOR_URI, SOUND_URIS, SPRITES_URI } from "./generated/inline.ts";
import { Sheep as BaseSheep, type SheepAssets, type SheepOptions } from "./sheep.ts";

export const assets: SheepAssets = { sprites: SPRITES_URI, sounds: SOUND_URIS, cursor: CURSOR_URI };

export class Sheep extends BaseSheep {
  constructor(options: SheepOptions = {}) {
    super({ assets, ...options });
  }

  /** Put `count` sheep on the page. */
  static spawn(count = 1, options: SheepOptions = {}): Sheep[] {
    return Array.from({ length: count }, () => new Sheep(options));
  }
}

export { BaseSheep };
export type { SheepAssets, SheepOptions, SheepEvent } from "./sheep.ts";
export { Engine, MsRand, HWND_MAIN, HWND_SUB, FRAME_W, FRAME_H } from "./engine.ts";
export type { EngineConfig, EngineHost, Rect, Sprite, WindowInfo, PeerInfo } from "./engine.ts";
export { ACTIONS } from "./generated/tables.ts";
export { DEFAULT_PLATFORM_SELECTOR } from "./platforms.ts";
export default Sheep;
