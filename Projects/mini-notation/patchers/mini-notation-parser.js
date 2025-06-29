function parse(...expr) {
    let output = [];

    for (let token of expr) {
        if (typeof token == 'number') {
            output.push(token);
        } else if (typeof token == 'string' && token.includes('!')) {
            let elem = token.split('!');
            for (i = 0; i < elem[1]; i++) {
                let res = sanitizeType(elem[0]);
                output.push(res);
            }
        }
    }
    outlet(0, output);
}

function sanitizeType(elem) {
    if (isFinite(elem)) {
        return parseFloat(elem);
    } else {
        return elem;
    }
}
