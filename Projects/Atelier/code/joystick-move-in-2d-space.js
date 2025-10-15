inlets = 1;
outlets = 2;
autowatch = 1;

let x_phase;
let y_phase;

function reset() {
    x_phase = 0.75;
    y_phase = 0;
    outlet(0, x_phase, y_phase);
}
reset();

let x_direction = 0;
let y_direction = 0;

function sigmoid(x, k) {
    return (x - k * x) / (k - 2 * k * Math.abs(x) + 1);
}

function smooth_step(x) {
    let t = Math.abs(x);
    t = t * t * (3 - 2 * t);
    return Math.sign(x) * t;
}

function position(x, y) {
    // x_direction = sigmoid(x, 0.1);
    // y_direction = sigmoid(y, 0.1);
    x_direction = smooth_step(x);
    y_direction = smooth_step(y);
    outlet(1, x_direction, y_direction);
}

function move() {
    x_phase += x_direction * 0.1;
    y_phase += y_direction * 0.1;
}

let t = new Task(update_position, this);
t.interval = 30;
t.repeat();

function update_position() {
    let prev_x = x_phase;
    let prev_y = y_phase;

    move();

    if (x_phase == prev_x && y_phase == prev_y) {
        return;
    }

    outlet(0, x_phase, y_phase);
}

