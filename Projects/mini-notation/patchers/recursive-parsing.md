# Recursive Parsing Abstraction

## Current Structure (Linear)

```
// Current: handles only simple tokens with operators
token -> check type -> apply operator -> output
```

## Recursive Structure

```javascript
function parseExpression(input) {
    // 1. Token Classification
    if (isAtom(input)) return [input];
    if (hasOperator(input)) return applyOperator(input);
    if (isBracketGroup(input)) return parseGroup(input);
}

function parseGroup(group) {
    // 2. Recursive Descent
    let tokens = tokenizeBrackets(group); // "[0 [1 2]!2]" -> ["0", "[1 2]!2"]
    let parsed = tokens.map(token => parseExpression(token)); // Recurse here
    return flatten(parsed);
}

function applyOperator(expression) {
    // 3. Operator Application  
    let [operand, operator, value] = parseOperator(expression); // "a!3" -> ["a", "!", "3"]
    let base = parseExpression(operand); // Recurse on operand
    return repeat(base, value);
}
```

## Key Abstractions

1. **Token Classification** - Separate atoms, operators, and groups
2. **Recursive Descent** - Each bracket group calls `parseExpression` again
3. **Operator Binding** - Apply operators after parsing their operands

## Example: `[0 [0 1]!2]!2`

```
parseExpression("[0 [0 1]!2]!2")
├── applyOperator("!", "[0 [0 1]!2]", "2")
    ├── parseExpression("[0 [0 1]!2]")  // Recurse on operand
        ├── parseGroup("[0 [0 1]!2]")
            ├── parseExpression("0") → [0]
            ├── parseExpression("[0 1]!2")  // Recurse deeper
                ├── applyOperator("!", "[0 1]", "2") 
                    ├── parseExpression("[0 1]")  // Recurse deeper
                        ├── parseGroup("[0 1]")
                            ├── parseExpression("0") → [0]
                            ├── parseExpression("1") → [1]
                        └── → [0, 1]
                    └── repeat([0, 1], 2) → [0, 1, 0, 1]
            └── → [0, 0, 1, 0, 1]
    └── repeat([0, 0, 1, 0, 1], 2) → [0, 0, 1, 0, 1, 0, 0, 1, 0, 1]
```

The key insight is separating **parsing** (structure recognition) from
**evaluation** (applying operators), allowing each to recursively call the other
when encountering nested structures.

