const m = mgraphics;
m.init();
m.relative_coords = 0;
m.autofill        = 0;

let width  = m.size[0];
let height = m.size[1];

let Grid = require("./Tile_class.js");

function paint()
{
  width  = m.size[0];
  height = m.size[1];

  let grid = new Grid(m.size, 2);
  grid.init();

  background();
}

function background()
{
  m.set_source_rgba(1, 1, 1, 1);
  m.rectangle(0, 0, width, height);
  m.fill();
}
