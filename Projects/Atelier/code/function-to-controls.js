inlets = 1;
outlets = 2;
autowatch = 1;

let num_points = 8;
let _rate = 0;
let _phase = 0;

declareattribute("num_points", "get_num_points", "set_num_points");

function get_num_points() {
    return num_points;
}

function set_num_points(v) {
    num_points = v;
}

function rate(x) {
    _rate = x;
}

function phase(x) {
    _phase = x;
}

function bang() {
    let values = [];

    for (i = 0; i < num_points; i++) {
        let t = i / num_points;
        let value = Math.sin(Math.PI * 2 * t * _rate + (_phase * 2 * Math.PI));
        value = (value + 1) * 0.5;
        values.push((value));
    }

    outlet(0, values);
}
