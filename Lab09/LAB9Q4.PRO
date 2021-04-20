predicates
  start(string)

clauses
  start(S):-
  fronttoken(S,S3,S2), 
  upper_lower(S1,S3), 
  write(S1), 
  nl, start(S2).
  
  start("").