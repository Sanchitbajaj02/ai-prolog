domains
  L = char*
  S = string

predicates
  split(S, L)

clauses
  split("", []).
  split(S,[H|T]):- 
  frontchar(S, H, R), split(R, T).