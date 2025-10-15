inlets = 1;
outlets = 1;
autowatch = 1;

mgraphics.init();
mgraphics.relative_coords = 0;

let bg_color = [0, 0, 0, 1];
let fg_color = [1, 1, 1, 1];

let num_channels = 3;
let levels = ['eclair', "clin d'oeil", 'dérapage'];

function draw_background(width, height) {
    mgraphics.set_source_rgba(bg_color);
    mgraphics.rectangle(0, 0, width, height);
    mgraphics.fill();
}

function paint() {
    let view_size = mgraphics.size;
    let width = view_size[0];
    let height = view_size[1];

    draw_background(width, height);
}
