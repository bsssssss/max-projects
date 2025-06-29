# Mini notation

Inspired by live coding language TidalCycles, the goal is to express patterns in
expressive and concise ways.

I'm thinking about this in terms of event + operator + operand.

# Syntax

`{event}!{n}` - Repeat `{event}` `{n}` times.

# Questions

## How to handle element types ?

`0!2` vs `sound1!2`

## How to nest events ?

ex `[0 1]!2` -> `0 1 0 1`
