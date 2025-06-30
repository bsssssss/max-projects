# Mini notation

Inspired by live coding language TidalCycles, the goal is to express patterns in
expressive and concise ways.

I'm thinking about this in terms of `event` + `operator` + `operand`.

# Syntax

`{event}!{n}` - Repeat `{event}`, `{n}` times.

# Questions

## How to nest events ?

`[0 1]!2` -> `0 1 0 1` \
`[0 [0 1]!2]!2 2!2` -> 0 0 1 0 1 0 0 1 0 1 2 2

1. **Bracket detection** - Identify `[...]` groups in input
2. **Recursive parsing** - Parse nested groups before applying operators
3. **Group expansion** - Handle `[group]!n` by repeating the entire sequence
4. **Flatten output** - Convert nested arrays to flat sequence
5. **Mixed nesting** - Support `[element [nested]!n]!m` patterns
