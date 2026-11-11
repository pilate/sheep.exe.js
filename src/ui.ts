/*
 * The two dialogs of the original, rendered from their DLGTEMPLATE resources:
 *   107 "Screen Mate 1.0"           settings (double-click the sheep)
 *   108 "Screen Mate Debug Window"  actions (Shift+Ctrl+double-click)
 */
import { DIALOGS, type DialogItem, type DialogTemplate } from "./generated/tables.ts";
import { OWN_NODE_ATTR } from "./platforms.ts";

const DLU_X = 1.6;
const DLU_Y = 1.75;

// Button styles (low nibble of the control style)
const BS_DEFPUSHBUTTON = 1;
const BS_AUTOCHECKBOX = 3;
const BS_AUTORADIOBUTTON = 9;

export const ID_OK = 1;
export const ID_CANCEL = 2;
export const ID_REMOVE = 3;
export const ID_HELP = 4;
export const ID_ALARM = 0x3e9;
export const ID_SOUND = 0x3ea;
export const ID_NOSLEEP = 0x3eb;
export const ID_GFORCE = 0x3ec;
export const ID_FIRST_ACTION = 0x3ea;
export const ID_UP = 0x408;
export const ID_DOWN = 0x409;
export const ID_LEFT = 0x40a;
export const ID_RIGHT = 0x40b;

const CSS = `
.sheepjs-dlg{position:fixed;z-index:2147483647;font:11px/1.2 Tahoma,"MS Sans Serif","Segoe UI",sans-serif;
  color:#000;background:#c0c0c0;border:2px solid;border-color:#fff #404040 #404040 #fff;
  box-shadow:1px 1px 0 #000;padding:0;margin:0;user-select:none;-webkit-user-select:none;box-sizing:content-box}
.sheepjs-dlg *{box-sizing:border-box;font:inherit;color:inherit;margin:0}
.sheepjs-dlg .t{background:#000080;color:#fff;font-weight:bold;padding:2px 4px;height:18px;cursor:move;
  display:flex;justify-content:space-between;align-items:center;white-space:nowrap}
.sheepjs-dlg .t button{width:16px;height:14px;padding:0;line-height:10px;background:#c0c0c0;color:#000;
  border:1px solid;border-color:#fff #404040 #404040 #fff;cursor:default}
.sheepjs-dlg .b{position:relative}
.sheepjs-dlg .c{position:absolute;display:flex;align-items:center;white-space:nowrap}
.sheepjs-dlg .c input{margin:0 4px 0 0}
.sheepjs-dlg button.p{position:absolute;background:#c0c0c0;border:2px solid;border-color:#fff #404040 #404040 #fff;
  cursor:default;padding:0}
.sheepjs-dlg button.p.d{outline:1px solid #000}
.sheepjs-dlg button.p:active{border-color:#404040 #fff #fff #404040}
.sheepjs-dlg button.p:disabled{color:#808080}
.sheepjs-dlg u{text-decoration:underline}
`;

let cssInjected = false;
function injectCss(): void {
  if (cssInjected || typeof document === "undefined") return;
  cssInjected = true;
  const st = document.createElement("style");
  st.setAttribute(OWN_NODE_ATTR, "");
  st.textContent = CSS;
  document.head.appendChild(st);
}

function label(text: string): DocumentFragment {
  const f = document.createDocumentFragment();
  const i = text.indexOf("&");
  if (i < 0 || i === text.length - 1) {
    f.append(text);
    return f;
  }
  const u = document.createElement("u");
  u.textContent = text[i + 1];
  f.append(text.slice(0, i), u, text.slice(i + 2));
  return f;
}

export interface DialogHandlers {
  /** WM_INITDIALOG: return initial check state for a control. */
  checked?: (id: number) => boolean;
  /** Control pressed (WM_COMMAND). Return true to close the dialog. */
  command: (id: number, dlg: Dialog) => boolean | void;
  disabled?: (id: number) => boolean;
}

export class Dialog {
  readonly root: HTMLDivElement;
  private readonly handlers: DialogHandlers;
  private readonly onClose: () => void;
  private readonly inputs = new Map<number, HTMLInputElement>();
  private closed = false;

  constructor(template: DialogTemplate, handlers: DialogHandlers, near: { x: number; y: number }, onClose: () => void) {
    this.handlers = handlers;
    this.onClose = onClose;
    injectCss();
    const [, , cx, cy] = template.rect;
    const w = Math.round(cx * DLU_X);
    const h = Math.round(cy * DLU_Y);
    const root = document.createElement("div");
    this.root = root;
    root.className = "sheepjs-dlg";
    root.setAttribute(OWN_NODE_ATTR, "");
    root.setAttribute("role", "dialog");
    root.setAttribute("aria-label", template.caption);
    root.style.width = `${w}px`;

    const title = document.createElement("div");
    title.className = "t";
    title.append(template.caption);
    const x = document.createElement("button");
    x.type = "button";
    x.textContent = "×";
    x.setAttribute("aria-label", "Close");
    x.addEventListener("click", () => this.close());
    title.append(x);
    root.append(title);

    const body = document.createElement("div");
    body.className = "b";
    body.style.height = `${h}px`;
    const radioName = `sheepjs-r${Math.random().toString(36).slice(2)}`;
    for (const it of template.items) body.append(this.control(it, radioName));
    root.append(body);

    this.dragTitle(title);
    root.addEventListener("keydown", (e) => {
      if (e.key === "Escape") this.close();
    });
    document.body.append(root);
    const vw = document.documentElement.clientWidth;
    const vh = document.documentElement.clientHeight;
    const rw = root.offsetWidth;
    const rh = root.offsetHeight;
    root.style.left = `${Math.max(0, Math.min(vw - rw, near.x))}px`;
    root.style.top = `${Math.max(0, Math.min(vh - rh, near.y))}px`;
    (root.querySelector("button.d") as HTMLElement | null)?.focus();
  }

  private control(it: DialogItem, radioName: string): HTMLElement {
    const [x, y, cx, cy] = it.rect;
    const kind = it.style & 0xf;
    const pos = (el: HTMLElement): HTMLElement => {
      el.style.left = `${Math.round(x * DLU_X)}px`;
      el.style.top = `${Math.round(y * DLU_Y)}px`;
      el.style.width = `${Math.round(cx * DLU_X)}px`;
      el.style.height = `${Math.round(cy * DLU_Y)}px`;
      return el;
    };
    if (kind === BS_AUTOCHECKBOX || kind === BS_AUTORADIOBUTTON) {
      const lab = document.createElement("label");
      lab.className = "c";
      const inp = document.createElement("input");
      inp.type = kind === BS_AUTOCHECKBOX ? "checkbox" : "radio";
      if (kind === BS_AUTORADIOBUTTON) inp.name = radioName;
      inp.checked = this.handlers.checked?.(it.id) ?? false;
      inp.addEventListener("change", () => {
        if (kind === BS_AUTORADIOBUTTON && inp.checked) this.command(it.id);
      });
      this.inputs.set(it.id, inp);
      const text = document.createElement("span");
      text.append(label(it.text));
      lab.append(inp, text);
      return pos(lab);
    }
    const b = document.createElement("button");
    b.type = "button";
    b.className = kind === BS_DEFPUSHBUTTON ? "p d" : "p";
    b.append(label(it.text));
    b.disabled = this.handlers.disabled?.(it.id) ?? false;
    b.addEventListener("click", () => this.command(it.id));
    return pos(b);
  }

  private dragTitle(title: HTMLElement): void {
    title.addEventListener("pointerdown", (e) => {
      if ((e.target as Element).closest("button")) return;
      const r = this.root.getBoundingClientRect();
      const ox = e.clientX - r.left;
      const oy = e.clientY - r.top;
      title.setPointerCapture(e.pointerId);
      const move = (ev: PointerEvent): void => {
        this.root.style.left = `${ev.clientX - ox}px`;
        this.root.style.top = `${ev.clientY - oy}px`;
      };
      const up = (): void => {
        title.removeEventListener("pointermove", move);
        title.removeEventListener("pointerup", up);
      };
      title.addEventListener("pointermove", move);
      title.addEventListener("pointerup", up);
    });
  }

  /** IsDlgButtonChecked */
  isChecked(id: number): boolean {
    return this.inputs.get(id)?.checked ?? false;
  }

  private command(id: number): void {
    if (this.handlers.command(id, this) === true) this.close();
  }

  close(): void {
    if (this.closed) return;
    this.closed = true;
    this.root.remove();
    this.onClose();
  }
}

export function settingsTemplate(): DialogTemplate {
  return DIALOGS[107];
}

export function debugTemplate(): DialogTemplate {
  return DIALOGS[108];
}
