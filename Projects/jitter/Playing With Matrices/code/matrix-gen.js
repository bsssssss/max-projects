inlets = 1;
outlets = 1;
autowatch = 1;

let final_matrix = new JitterMatrix(4, 'float32', 64, 64);

function generate() {
    let n = 2;
    let params = Array.from({length: n * n}, () => Math.random());

    post(params, '\n');
}

function output(matrix) {
    outlet(0, 'jit_matrix', matrix.name);
}

generate();
