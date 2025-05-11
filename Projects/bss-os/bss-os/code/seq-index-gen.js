
// seq_sine();

function bang() {
  seq_sine();
}

function seq_sine(freq = 1, steps = 16) {
  let max_arr = new MaxArray();
  let seq     = [];

  // post(`freq: ${freq}\n`);
  // post(`steps: ${steps}\n`);

  for (let i = 0; i < steps; i++) {
    let norm = ((i / steps) * freq) % 1;
    let sine = Math.sin(norm * (Math.PI * 2));
    sine     = bipolar_to_unipolar(sine);
    seq.push(sine);
  }

  max_arr.set(...seq);
  outlet(0, "array", max_arr.name);
}

function bipolar_to_unipolar(n) {
  return (n + 1) * 0.5;
}
