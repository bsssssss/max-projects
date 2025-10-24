inlets = 1;
outlets = 1;
autowatch = 1;

mgraphics.init();
mgraphics.relative_coords = 0;

let bg_color = [0, 0, 0, 1];
let fg_color = [1, 1, 1, 1];

let num_channels = 3;

let levels = [
    { symbol: '𐃇', value: -96 },
    { symbol: '𐂳', value: -12 },
    { symbol: '𐂐', value: 0 },
    { symbol: '𐂷', value: 12 },
    { symbol: '𐂫', value: 36 },
    { symbol: '𐃖', value: 60 },
];
let selected_level = { row: 0, column: 0 };
let active_levels;

function send_all() {
    for (i = 0; i < active_levels.length; i++) {
        outlet(0, i, levels[selected_level.row].value);
    }
}

function send_selected() {
    outlet(0, selected_level.column, levels[selected_level.row].value);
}

function init() {
    active_levels = new Array(num_channels).fill(0);
    selected_level.column = 0;
    selected_level.row = 0;
    send_all();
    mgraphics.redraw();
}

init();

function randomize() {
    for (col = 0; col < num_channels; col++) {
        selected_level.column = col;
        selected_level.row = Math.floor(Math.random() * levels.length);
        set();
    }
}

// INPUTS

function move(direction) {
    switch (direction) {
        case 'up':
            selected_level.row =
                (selected_level.row - 1 + levels.length) % levels.length;
            break;
        case 'down':
            selected_level.row = (selected_level.row + 1) % levels.length;
            break;
        case 'left':
            selected_level.column =
                (selected_level.column - 1 + num_channels) % num_channels;
            break;
        case 'right':
            selected_level.column = (selected_level.column + 1) % num_channels;
            break;
        default:
            return;
    }
    mgraphics.redraw();
}

function set() {
    if (active_levels[selected_level.column] != selected_level.row) {
        active_levels[selected_level.column] = selected_level.row;
        send_selected();
    }
    mgraphics.redraw();
}

// DRAWING

function draw_background(width, height) {
    mgraphics.set_source_rgba(bg_color);
    mgraphics.rectangle(0, 0, width, height);
    mgraphics.fill();
}

function draw_levels(box_w, box_h) {
    let margin = 4;
    let font_size = 48;

    mgraphics.select_font_face('JetBrainsMono Nerd Font');
    mgraphics.set_font_size(48);

    let cell_w = box_w / num_channels;
    let cell_h = box_h / levels.length;

    for (let col = 0; col < num_channels; col++) {
        for (row = 0; row < levels.length; row++) {
            let x = col * cell_w + margin;
            let y = row * cell_h + margin;
            let center_x = x + (cell_w - 2 * margin) / 2;
            let center_y = y + (cell_h - 2 * margin) / 2;

            if (col == selected_level.column && row == selected_level.row) {
                mgraphics.set_source_rgba(1, 1, 1, 0.9);
                mgraphics.rectangle(
                    x,
                    y,
                    cell_w - 2 * margin,
                    cell_h - 2 * margin
                );
                mgraphics.set_line_width(3);
                mgraphics.stroke();
            }

            let padding = 10;
            let font_extents = mgraphics.font_extents();
            let symbol = levels[row].symbol;
            let symbol_size = mgraphics.text_measure(symbol);

            mgraphics.move_to(
                center_x - symbol_size[0] / 2,
                center_y + font_extents[2] / 3
            );

            if (active_levels[col] == row) {
                mgraphics.set_source_rgba(1, 1, 1, 1);
            } else {
                mgraphics.set_source_rgba(1, 1, 1, 0.5);
            }

            mgraphics.text_path(symbol);
            mgraphics.fill();
        }
    }
}

function paint() {
    let size = mgraphics.size;
    let w = size[0];
    let h = size[1];

    draw_background(w, h);
    draw_levels(w, h);
}
