domains
    l=integer*

predicates
    member(integer,l)
    delete(integer,l,l)
    equal(l,l)

clauses
    member(X,[X|_]).
    member(X,[H|T]):-H<>X,member(X,T).
    
    delete(_,[],[]).
    delete(X,[X|T],T).
    delete(X,[H|T],[H|NT]):-H<>X,delete(X,T,NT).

    equal([],[]).
    equal([H|T],L2):-
    member(H,L2),delete(H,L2,NT),equal(T,NT).
