domains
  L = string*
  S = string

predicates
  split(S, L)

clauses
  split("", []).
  split(S, [H|T]):-
  fronttoken(S,H,R), split(R,T).