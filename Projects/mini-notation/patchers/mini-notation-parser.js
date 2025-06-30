outlets = 2;

post('===== TEST =====' +
     '\n');
outlet(1, `test`, '0 1');
outlet(1, `test`, '0!2 1!2');
outlet(1, `test`, 'bd1 sd1');
outlet(1, `test`, 'bd1!2 sd1!2');

function p(...expr)
{
    let output = parseExpression(expr);
    post(expr + ' --> ' + output + '\n');
}

function parseExpression(expr)
{
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
            post('error: could not process event type');
        }
    }
    return parsed;
}

function isAtom(input)
{
    if (
    typeof input == 'number' ||
    (typeof input == 'string' && !input.includes('!'))) {
        return true;
    }
    else {
        return false;
    }
}

function hasOperator(input)
{
    if (typeof input == 'string' && input.includes('!')) {
        return true;
    }
    else {
        return false;
    }
}

function sanitizeType(elem)
{
    if (isFinite(elem)) {
        return parseFloat(elem);
    }
    else {
        return elem;
    }
}
