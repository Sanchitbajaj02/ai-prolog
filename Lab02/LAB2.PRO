domains
    person=symbol

predicates
    grandfather(person,person)
    grandmother(person,person)
    father(person,person)
    mother(person,person)
    male(person)
    female(person)
    father_in_law(person,person)
    
clauses
    male(prithviraj_kapoor).
    male(raj_kapoor).
    male(shammi_kapoor).
    male(shashi).
    male(randhir_kapoor).
    male(rajeev_kapoor).
    male(rajan_nandan).
    male(rishi_kapoor).
    male(ranbir_kapoor).
    male(sanjay).
    male(saif).

    female(ramsarni).
    female(krishna).
    female(geetabali).
    female(jennifer).
    female(babita).
    female(ritu_kapoor).
    female(nitu).
    female(reema_kapoor).
    
    grandfather(prithviraj_kapoor,randhir_kapoor).
    grandfather(prithviraj_kapoor,ritu_kapoor).
    grandfather(prithviraj_kapoor,rishi_kapoor).
    grandfather(prithviraj_kapoor,reema_kapoor).
    grandfather(raj_kapoor,karishma).
    grandfather(shammi_kapoor,karishma).
    grandfather(shashi,karishma).
    grandfather(raj_kapoor,kareena).
    grandfather(shammi_kapoor,kareena).
    grandfather(shashi,kareena).
    grandfather(raj_kapoor,ranbir_kapoor).
    grandfather(shammi_kapoor,ranbir_kapoor).
    grandfather(shashi,ranbir_kapoor).

    grandmother(ramsarani,randhir_kapoor).
    grandmother(ramsarani,ritu_kapoor).
    grandmother(ramsarani,rishi_kapoor).
    grandmother(ramsarani,reema_kapoor).
    grandmother(krishna,karishma).
    grandmother(geetabali,karishma).
    grandmother(jennifer,karishma).
    grandmother(krishna,karrena).
    grandmother(geetabali,karrena).
    grandmother(jennifer,karrena).
    grandmother(krishna,ranbir_kapoor).
    grandmother(geetabali,ranbir_kapoor).
    grandmother(jennifer,ranbir_kapoor).

    father(prithviraj_kapoor,raj_kapoor).
    father(prithviraj_kapoor,shammi_kapoor).
    father(prithviraj_kapoor,shashi_kapoor).
    father(randhir_kapoor,karishma).
    father(randhir_kapoor,kareena).
    father(rishi_kapoor,ranbir_kapoor).
    father(sanjay,samira).
    father(shammi_kapoor,aditya_raj_kapoor).

    mother(ramsarani,raj_kapoor).
    mother(ramsarani,shammi_kapoor).
    mother(ramsarani,shashi_kapoor).
    mother(geetabali,aditya_raj_kapoor).
    mother(krishna,randhir_kapoor).
    mother(krishna,rajeev_kapoor).
    mother(krishna,ritu_kapoor).
    mother(krishna,rishi_kapoor).
    mother(krishna,reema_kapoor).
    mother(karishma,samira).
    mother(neetu,ranbir_kapoor).
    
    father_in_law(X,Y):- grandfather(X,Z),mother(Y,Z).
    