inlets = 1;
outlets = 1;
autowatch = 1;

let num_values = 3;

declareattribute('num_values', 'get_num_values', 'set_num_values');

function get_num_values() {
    return num_values;
}

function set_num_values(v) {
    num_values = v;
}

function position(x, y) {
    outlet(0, project(x, y, num_values));
}

function project(x, y, n) {
    let values = [];

    for (let i = 0; i < n; i++) {
        let angle = (2 * Math.PI * i) / n;
        let value =
            Math.cos(x) * Math.cos(angle) + Math.sin(y) * Math.sin(angle);
        values.push(value / Math.sqrt(2));
    }

    return values;
}
project.private = 1;
