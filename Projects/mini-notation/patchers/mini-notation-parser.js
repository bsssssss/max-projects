outlets = 2;

outlet(1, 'test');

function p(...expr) {
    let parsed = parseExpression(expr);
    post(expr + '\n> ' + parsed + '\n');
}

function parseExpression(expr) {
    let parsed = [];
    for (let token of expr) {
        if (isAtom(token)) {
            parsed.push(token);
        }
        else if (hasOperator(token)) {
            let elem = token.split('!');
            for (i = 0; i < elem[1]; i++) {
                parsed.push(sanitizeType(elem[0]));
            }
        }
        else {
            post('error: could not process token type');
        }
    }
    return parsed;
}

function isAtom(input) {
    if (typeof input == 'number' || (typeof input == 'string' && !input.includes('!'))) {
        return true;
    }
    else {
        return false;
    }
}

function hasOperator(input) {
    if (typeof input == 'string' && input.includes('!')) {
        return true;
    }
    else {
        return false;
    }
}

function sanitizeType(elem) {
    if (isFinite(elem)) {
        return parseFloat(elem);
    }
    else {
        return elem;
    }
}
