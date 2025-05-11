mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill        = 0;

let m      = mgraphics;
let width  = mgraphics.size[0];
let height = mgraphics.size[1];

function paint()
{
  width  = mgraphics.size[0];
  height = mgraphics.size[1];

  m.set_source_rgba(0, 0, 0, 1);
  m.rectangle(0, 0, width, height);
  m.fill();
}
