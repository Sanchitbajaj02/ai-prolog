predicates
  start(string)

clauses
  start(S):-
  frontchar(S,S3,S2), 
  char_int(S3,I), 
  write(I), 
  nl, start(S2).

  start("").