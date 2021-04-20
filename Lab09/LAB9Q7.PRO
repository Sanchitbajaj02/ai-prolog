domains
  L = char*
  S = string

predicates  
  change(L,S)

clauses
  change([], ""):-!.
  change([H|T],S):- 
  change(T,S1), 
  str_char(S2,H), 
  concat(S2,S1,S).