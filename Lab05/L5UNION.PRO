domains
  list = integer*

predicates
  member(integer, list)
  union(list, list, list)

clauses
  member(X, [X|_]).
  member(X, [_|Y]):-member(X, Y).
  union([], Z, Z).
  
  union([X|Y], Z, W):-
  member(X, Z), union(Y, Z, W).
  
  union([X|Y], Z, [X|W]):-
  not(member(X, Z)), union(Y, Z, W).
