predicates
  start(string)

clauses
  start(X):-
  readln(S), 
  readln(S1), 
  concat(S, S1, S2), 
  upper_lower(X, S2).