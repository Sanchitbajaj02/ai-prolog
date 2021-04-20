domains
	I = integer 
	list = symbol* 
	X = symbol

predicates 
	count(X, list, I)

clauses
	count(_,[],I):- I=0. 
	
	count(X,[H|T],I):-
	count(X,T,Y),H=X, I = Y+1. 
	
	count(X,[H|T], I):- 
	H<>X, count(X,T,I).