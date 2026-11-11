/*
 * <script> build: exposes `window.SheepExe` and, if the script tag has a
 * `data-autostart` attribute, puts sheep on the page once it has loaded:
 *
 *   <script src="sheep.js" data-autostart></script>
 *   <script src="sheep.js" data-autostart="3" data-sound></script>
 */
import { Sheep, ACTIONS, Engine, assets } from "./index.ts";

const api = { Sheep, ACTIONS, Engine, assets, spawn: Sheep.spawn.bind(Sheep), removeAll: () => Sheep.removeAll() };
(globalThis as unknown as { SheepExe: typeof api }).SheepExe = api;

const script = typeof document !== "undefined" ? (document.currentScript as HTMLScriptElement | null) : null;
if (script && script.hasAttribute("data-autostart")) {
  const n = Math.max(1, Math.min(8, parseInt(script.getAttribute("data-autostart") || "1", 10) || 1));
  const flag = (name: string): boolean | undefined =>
    script.hasAttribute(`data-${name}`) ? script.getAttribute(`data-${name}`) !== "false" : undefined;
  const scale = parseFloat(script.getAttribute("data-scale") || "");
  const go = (): void => {
    Sheep.spawn(n, {
      sound: flag("sound"),
      alarm: flag("alarm"),
      noSleep: flag("no-sleep"),
      gforce: flag("gforce"),
      scale: scale > 0 ? scale : undefined,
      windows: script.getAttribute("data-windows") || undefined,
    });
  };
  if (document.readyState === "loading") document.addEventListener("DOMContentLoaded", go, { once: true });
  else go();
}
