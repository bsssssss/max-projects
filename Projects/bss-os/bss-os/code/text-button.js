
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill        = 0;

//---------------------------------------------------------------------------------//

let fontname = "Arial";
let textstr  = "set me !";

let width  = mgraphics.size[0];
let height = mgraphics.size[1];

init();

function init()
{
  const fontlist = mgraphics.getfontlist();
  let   font     = "Hasklug Nerd Font Mono";
  if (fontlist.includes(font)) {
    fontname = font;
  }
  // post(`selected font: ${fontname}\n`);
}

//---------------------------------------------------------------------------------//

function paint()
{
  width  = mgraphics.size[0];
  height = mgraphics.size[1];

  // post(`width: ${width}\nheight: ${height}\n`)
  draw_text();
}

function draw_text()
{
  mgraphics.set_source_rgba(1, 1, 1, 1);
  mgraphics.select_font_face(fontname);
  mgraphics.set_font_size(11);

  let textdim = mgraphics.text_measure(textstr);
  let pos_x   = (width / 2) - (textdim[0] / 2);
  let pos_y   = (height / 2) - ((textdim[1]) / 2) + 10;

  mgraphics.move_to(pos_x, pos_y);
  mgraphics.text_path(textstr);
  mgraphics.fill();
}

function set(text)
{
  textstr = text;
  mgraphics.redraw()
}

function onclick()
{
  post("clicked\n");
}
