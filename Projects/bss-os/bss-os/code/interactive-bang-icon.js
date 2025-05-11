// @ts-nocheck

outlets = 2;
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill        = 0;

let icon     = new MGraphicsSVG("dots-grid.svg");
let is_hover = false;
let zoom = 0.75;

init();

function init() {
  outlet(1, "init")
}

function paint() {
  let width  = mgraphics.size[0];
  let height = mgraphics.size[1];

  let basecolor = this.patcher.textcolor;
  basecolor[3] *= 0.3;

  let hovercolor = this.patcher.syntax_objectcolor;
  hovercolor[3] *= 0.8;

  if (is_hover) {
    draw_icon(width, height, hovercolor);
  }
  else {
    draw_icon(width, height, basecolor);
  }
}

function draw_icon(width, height, color) {

  let w = width * zoom;
  let h = height * zoom;
  let x = (width - w) / 2;
  let y = (height - h) / 2;

  icon.mapreset();
  icon.mapcolor([ 0.0, 0.0, 0.0, 1.0 ], color)

  mgraphics.svg_render(icon,
                       x, y,
                       w, h,
                       1.0);
}

function svg(icon_name) {
  icon = new MGraphicsSVG(icon_name);
  mgraphics.redraw();
}

function setzoom(factor) {
  zoom = factor;
  mgraphics.redraw();
}

function onclick(x, y, button) {
  outlet(0, "bang");
}

function onidle() {
  is_hover = true;
  mgraphics.redraw();
}

function onidleout() {
  is_hover = false;
  mgraphics.redraw();
}
