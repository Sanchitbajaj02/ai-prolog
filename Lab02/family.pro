domains
    person = symbol
predicates
    male(person)
    female(person)
    father(person,person)
    mother(person,person)
    husband(person,person)
    wife(person,person)

    brother(person,person)
    sister(person,person)

    father_in_law(person,person)
    mother_in_law(person,person)

 clauses
    male(prithviraj).
    male(raj).
    male(shammi).
    male(shashi).
    male(aditya_raj).
    male(kunal).
    male(randhir).
    male(rishi).
    male(rajan_nanda).
    male(sanjay).
    male(saif).
    male(ranbir).

    female(ramsarni).
    female(krishna).
    female(geetabali).
    female(jennifer).
    female(babita).
    female(ritu).
    female(nitu).
    female(reema).
    female(karishma).
    female(kareena).
    female(samaira).

    father(prithviraj,raj).
    father(prithviraj,shammi).
    father(prithviraj,shashi).
    father(raj,randhir).
    father(raj,ritu).
    father(raj,rishi).
    father(raj,reema).
    father(shammi,aditya_raj).
    father(shashi,kunal).
    father(randhir,karishma).
    father(randhir,kareena).
    father(rishi,ranbir).
    father(sanjay,samaira).

    husband(prithviraj, ramsarni).
    husband(raj,krishna).
    husband(shammi,geetabali).
    husband(shashi,jennifer).
    husband(randhir,babita).
    husband(rajan_nanda,ritu).
    husband(rishi, nitu).
    husband(sanjay,karishma).
    husband(saif,kareena).

    wife(W,H) :- husband(H,W).
    mother(X,Y) :- wife(X,Z),father(Z,Y).
    son(X,Y) :- father(Y,X),male(X).
    daughter(X,Y) :- father(Y,X),female(X).

    brother(X,Y) :- father(Z,X),father(Z,Y),male(X),male(Y),X<>Y.
    sister(X,Y) :- father(Z,X),father(Z,Y),female(X),female(Y),X<>Y.

    father_in_law(X,Y):- father(X,Z),male(Z),husband(Z,Y).
    mother_in_law(X,Y):- father_in_law(Z,Y),husband(Z,X).