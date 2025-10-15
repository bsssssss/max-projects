/*

2d matrix value visualizer

*/

mgraphics.init();
mgraphics.autofill = 0;
mgraphics.relative_coords = 0;

let num_rows = 3;
let num_cols = 3;

let bg_color = [0, 0, 0, 1];
let fg_color = [1, 1, 1, 1];

let values;

function init_value() {
    values = [];
    for (row = 0; row < num_rows; row++) {
        values[row] = [];
        for (col = 0; col < num_cols; col++) {
            values[row][col] = 0;
        }
    }
}

init_value();

function draw_background(width, height) {
    mgraphics.set_source_rgba(bg_color);
    mgraphics.rectangle(0, 0, width, height);
    mgraphics.fill();
}

function draw_value(box_width, box_height) {
    let padding = 5;
    let cell_width = box_width / num_cols;
    let cell_height = box_height / num_rows;

    mgraphics.set_source_rgba(fg_color);

    for (row in values) {
        for (col in values[row]) {
            let y = col * cell_width;
            let x = row * cell_height;

            // mgraphics.rectangle(
            //     x + padding,
            //     y + padding,
            //     cell_width - 2 * padding,
            //     cell_height - 2 * padding
            // );
            // mgraphics.stroke();

            center_x = x + cell_width / 2;
            center_y = y + cell_height / 2;
            size = values[row][col] * (cell_width - 2 * padding);
            radius = size / 2;

            mgraphics.ellipse(center_x - radius, center_y - radius, size, size);
            mgraphics.stroke();
        }
    }
}

function paint() {
    let view_size = mgraphics.size;
    let width = view_size[0];
    let height = view_size[1];

    draw_background(width, height);
    draw_value(width, height);
}

function set(row, col, val) {
    if (row < num_rows && col < num_cols) {
        if (val >= 0 && val <= 1) {
            values[row][col] = val;
        } else {
            error('out of range value');
        }
    } else {
        error('out of range index');
    }
    mgraphics.redraw();
}

// all mouse events are of the form:
// onevent <x>, <y>, <button down>, <cmd(PC ctrl)>, <shift>, <capslock>, <option>, <ctrl(PC rbutton)>
// if you don't care about the additonal modifiers args, you can simply leave them out.
// one potentially confusing thing is that mouse events are in absolute screen coordinates,
// with (0,0) as left top, and (width,height) as right, bottom, while drawing
// coordinates are in relative world coordinates, with (0,0) as the center, +1 top, -1 bottom,
// and x coordinates using a uniform scale based on the y coordinates. to convert between screen
// and world coordinates, use sketch.screentoworld(x,y) and sketch.worldtoscreen(x,y,z).

function onclick(x, y, but, cmd, shift, capslock, option, ctrl) {}
onclick.local = 1; //private. could be left public to permit "synthetic" events

function ondrag(x, y, but, cmd, shift, capslock, option, ctrl) {}
ondrag.local = 1; //private. could be left public to permit "synthetic" events

function ondblclick(x, y, but, cmd, shift, capslock, option, ctrl) {
    // reset
}
ondblclick.local = 1; //private. could be left public to permit "synthetic" events

function forcesize(w, h) {
    if (w != h) {
        h = w;
        box.message('size', w, h); // TODO: fix calling through additional box methods
    }
}
forcesize.local = 1; // private

function onresize(w, h) {
    forcesize(w, h);
    mgraphics.redraw();
}
onresize.local = 1; // private
