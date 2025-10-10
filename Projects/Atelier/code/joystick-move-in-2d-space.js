inlets = 1;
outlets = 1;
autowatch = 1;

let xpos = 0.5;
let ypos = 0.5;

let xdir = 0;
let ydir = 0;

let t = new Task(onTask, this);
t.interval = 30;
t.repeat();

function axis(x, y) {
    xdir = sigmoid(x, 0.8);
    ydir = sigmoid(y, 0.8);
}

function move() {
    xpos += xdir;
    ypos += ydir;
    xpos = Math.max(0, Math.min(1, xpos));
    ypos = Math.max(0, Math.min(1, ypos));
}

function sigmoid(x, k) {
    return (x - k * x) / (k - 2 * k * Math.abs(x) + 1);
}

function onTask() {
    move();
    outlet(0, xpos, 1 - ypos);
}

function reset() {
    xpos = 0.5;
    ypos = 0.5;
}
