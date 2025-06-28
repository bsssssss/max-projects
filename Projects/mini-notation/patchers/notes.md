# Mini notation

Inspired by live coding language TidalCycles, the goal is to express patterns in
expressive and concise ways.

I'm thinking about this in terms of event + operator + operand, where the event
could be anything (a number, a symbol etc...).

As a base I implemented a way to expand elements with `!{n_repetitions}`. ex:
`0!2 1!3` -> `0 0 1 1 1`

# Questions

- how to handle element types ? `0!2` vs `sound1!2`

- could we nest elements ? `[0 1]!2` -> `0 1 0 1`

- should we create a dictionary to embed more info about elements? This could
  enable ways to calculate ratios of event times for example.

- how to stay flexible ? It should be fairly abstract so that it can be used as
  building blocks in a max patch, like simply generating lists for later use.
  This may conflict with the dictionary way ?
