domains
	integerlist=integer*
	symbollist=symbol*
predicates
	member(integer,integerlist)
	member(symbol,symbollist)
clauses
	member(X,[X|_]).
	member(X,[_|Tail]):- member(X,Tail).