function parse(...expr) {
    let output = [];
    for (let token of expr) {
        let elem = token.split('!');
        for (i = 0; i < elem[1]; i++) {
            output.push(parseFloat(elem[0]));
        }
    }
    outlet(0, output);
}
