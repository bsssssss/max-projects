autowatch = 1;

box.setattr("arrow", 0);
box.setattr("applycolors", 1);
box.setattr("menumode", 0);

function paint() {
  var view_size = mgraphics.size;
  var width     = view_size[0];
  var height    = view_size[1];

  var fg_color = box.patcher.getattr("textcolor");
  fg_color[3] *= 0.25;

  mgraphics.parentpaint();
  draw_border(width, height, fg_color);
  draw_triangle(width, height, fg_color);
}

function draw_border(width, height, color) {
  mgraphics.set_source_rgba(color);
  mgraphics.set_line_width(1);
  mgraphics.rectangle(0, 0, width, height);
  mgraphics.stroke();
}

function draw_triangle(width, height, color) {
  var size        = 10;
  var start_pos_x = width - size - 7;
  var start_pos_y = height / 3;

  mgraphics.set_source_rgba(color);
  mgraphics.set_line_width(0.75);

  mgraphics.move_to(start_pos_x, start_pos_y);
  mgraphics.line_to(start_pos_x + size, start_pos_y);
  mgraphics.line_to(start_pos_x + (size / 2), height - start_pos_y);
  mgraphics.line_to(start_pos_x, start_pos_y);

  mgraphics.stroke();
}
