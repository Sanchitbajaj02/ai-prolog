domains
  L = integer*

predicates
  append(L,L,L)

clauses
  append([],L,L)
  append(L,[],L)
  append([],[],[])
  append

domains
list = integer*

predicates
length(list, integer)

clauses
length([],0).
length([_|T],N):-length(T,X),N=X+1.