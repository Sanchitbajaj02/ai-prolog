Domains
  list = integer*.

Predicates
  bubblesort(list,list).
  swap(list,list).
  printlist(list).
    
Clauses
  bubblesort(InputList,SortList) :-
  swap(InputList,List) , ! ,
  printlist(List),
  bubblesort(List,SortList).
  
  bubblesort(SortList,SortList).
  
  swap([X,Y|List],[Y,X|List]) :- X > Y.
  
  swap([Z|List],[Z|List1]) :- swap(List,List1).
  
  printlist([]) :- nl.
  printlist([Head|List]) :- 
  write(Head, " "), printlist(List).