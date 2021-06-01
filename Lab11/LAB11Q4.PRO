Domains
  list = integer*.
  element = integer.
    
Predicates
  insertSort(list, list).
  insertItem(element, list, list).    
  printlist(list).
  
Clauses
  insertSort([H|List], Result) :-
  insertSort(List, Temp), 
  printlist(Temp),    
  insertItem(H, Temp, Result).
              
  insertSort([], []).        
  
  insertItem(X, [H|List], [H|Result]) :-
  H < X, !, insertItem(X, List, Result).
  
  insertItem(X, List, [X|List]).    
      

  printlist([]) :- nl.
  printlist([X|List]) :-
  write(X, " "), printlist(List).
