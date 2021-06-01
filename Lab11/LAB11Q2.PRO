domains
  list=integer*

predicates
  greatest(list,integer)
  selsort(list,list) 
  append(list,list,list) 
  delete(integer,list,list) 

clauses
  greatest([X],X).
  greatest([H|T1],X):-greatest(T1,X), X > H.
  greatest([H|T1],H):-greatest(T1,X), X <= H.

  delete(_,[],[]).
  delete(X,[X|T1],T1).
  delete(X,[H|T1],[H|T2]):-
  H <> X, delete(X,T1,T2).                

  append([],[],[]).
  append([],L,L).
  append(L,[],L).
  append([H|T1],L,[H|T2]):-append(T1,L,T2).                

  selsort([],[]).
  selsort([X],[X]).
  selsort(L,SL):-
  greatest(L,X), delete(X,L,L1), 
  selsort(L1,NSL), append([X],NSL,SL),!. 
