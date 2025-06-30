function parse(...expr) {
    let output = [];

    for (let token of expr) {
        if (
            typeof token == 'number' ||
            (typeof token == 'string' && !token.includes('!'))
        ) {
            output.push(token);
        } else if (typeof token == 'string') {
            let elem = token.split('!');
            for (i = 0; i < elem[1]; i++) {
                let res = sanitizeType(elem[0]);
                output.push(res);
            }
        } else {
            post('error: could not process event type');
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
