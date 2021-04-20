domains
  L = string*
  S = string

predicates
  change(L,S)

clauses
  change([], ""):- !.
  change([H|T],S):- 
  change(T,S1), concat(H,S1,S).