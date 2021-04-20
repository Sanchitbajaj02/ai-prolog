domains
    X=integer

predicates
    factorial(X,X)

clauses
    factorial(0,1).
    factorial(X,Y):-
        X<>0, Z=X-1, factorial(Z, M), Y=M*X.