autowatch = 1;

function paint() {
  var view_size = mgraphics.size;
  var width = view_size[0];
  var height = view_size[1];

  var fg_color = box.patcher.getattr("textcolor");
  fg_color[3] *= 0.25;

  mgraphics.parentpaint();
  draw_border(width, height, fg_color);
}

function draw_border(width, height, color) {
  mgraphics.set_source_rgba(color);
  mgraphics.set_line_width(1);
  mgraphics.rectangle(0, 0, width, height);
  mgraphics.stroke();
}
