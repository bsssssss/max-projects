function parse(...expr) {
    let output = [];

    for (let token of expr) {
        if (typeof token == 'string' && token.includes('!')) {
            let elem = token.split('!');
            for (i = 0; i < elem[1]; i++) {
                let res = sanitizeType(elem[0]);
                output.push(res);
            }
        } else {
            output.push(token);
        }
    }

    outlet(0, output);
}

function sanitizeType(elem) {
    if (isFinite(elem)) {
        post(`found number ${elem}` + '\n');
        return parseFloat(elem);
    } else {
        post(`found symbol ${elem}` + '\n');
        return elem;
    }
}
