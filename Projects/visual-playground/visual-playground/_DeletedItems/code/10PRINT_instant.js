
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill        = 0;

let width  = 0;
let height = 0;

let current_x = 0;
let current_y = 0;
let spacing   = 25;
let gap       = 0;
let lines     = [];

// let t      = new Task(run_10_PRINT);
// t.interval = 30;
// t.repeat();

function paint() {
  width  = mgraphics.size[0];
  height = mgraphics.size[1];

  background();
  draw_all();
  post("drawing");
}

function draw_all() {
  if (current_y < height) {
    draw_item();
    mgraphics.redraw();
  }
  draw_previous();
}

function draw_previous() {
  for (let line of lines) {
    mgraphics.set_source_rgba(1, 1, 1, 1);
    mgraphics.set_line_width(2);

    mgraphics.move_to(line.x1, line.y1);
    mgraphics.line_to(line.x2, line.y2);
    mgraphics.stroke();
  }
}

let count = 0;

function draw_item() {
  let line   = {};
  let choice = make_choice();

  if (choice) {
    // Backward slash
    line = {
      x1 : current_x + gap,
      y1 : current_y + gap,
      x2 : current_x + spacing - gap,
      y2 : current_y + spacing - gap
    }
  }
  // Forward slash
  else {
    line = {
      x1 : current_x + gap,
      y1 : current_y + spacing - gap,
      x2 : current_x + spacing - gap,
      y2 : current_y + gap
    }
  }

  mgraphics.set_source_rgba(1, 1, 1, 1);
  mgraphics.set_line_width(2);

  mgraphics.move_to(line.x1, line.y1);
  mgraphics.line_to(line.x2, line.y2);
  mgraphics.stroke();

  if (lines[count]) {
    lines[count] = line;
  }
  else {
    lines.push(line);
  }

  current_x += spacing;
  count     += 1;

  if (current_x >= width) {
    current_x  = 0;
    current_y += spacing;
  }

  // if (current_y >= height) {
  //   current_y = 0;
  //   count     = 0;
  // }
}

function make_choice() {
  return Math.random(1) < 0.5;
}

function background() {
  mgraphics.set_source_rgba(0, 0.51, 0.784, 1);
  mgraphics.rectangle(0, 0, width, height);
  mgraphics.fill();
}
