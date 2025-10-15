/*

value visualizer

*/

mgraphics.init();
mgraphics.autofill = 0;
mgraphics.relative_coords = 0;

let num_rows = 3;
let num_cols = 3;

let bg_color = [0, 0, 0, 1];
let fg_color = [1, 1, 1, 1];

let value = 0;

function draw_background(width, height) {
    mgraphics.set_source_rgba(bg_color);
    mgraphics.rectangle(0, 0, width, height);
    mgraphics.fill();
}

function draw_value(box_width, box_height) {
    let padding = 5;

    mgraphics.set_source_rgba(fg_color);

    center_x = box_width / 2;
    center_y = box_height / 2;
    size = value * (box_width - 2 * padding);
    radius = size / 2;

    mgraphics.ellipse(center_x - radius, center_y - radius, size, size);
    mgraphics.fill();
}

function paint() {
    let view_size = mgraphics.size;
    let width = view_size[0];
    let height = view_size[1];

    draw_background(width, height);
    draw_value(width, height);
}

function msg_float(val) {
    if (val >= 0 && val <= 1) {
        value = val;
        mgraphics.redraw();
    }
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
