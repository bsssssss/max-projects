# Mini notation

Inspired by live coding language TidalCycles, the goal is to express patterns in
expressive and concise ways.

To be useful in max, i think the most convenient thing to have for now is a
syntax to create complex lists of events.

In this context, an expression is a space-separated list of sub-expressions.

Sub-expressions can be :

- atoms (single values) : `0 1 2 3`
- atoms with operators applied to them : `0!4 1!4`
- groups of sub-expressions : `[0 1]!2 [2 3]!2`

The idea is to be able to arbitrarly nest everything ! Something like
`[0 1 [2 3]!2]` should be possible.

# Operators

`!` - If followed by an integer `n`, repeats the expression `n` times

# To implement

**isAtom()** : Check if expression is a value not followed by an operator.
**hasOperator()** : Check if expression is a value followed by an operator.
