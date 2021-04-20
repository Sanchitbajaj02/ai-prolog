domains
  list=integer*
predicates
  reverse_list(list,list)
  reverse(list,list,list)
clauses
  reverse_list(Inputlist,Outputlist):-
  reverse(Inputlist,[],Outputlist).    
  reverse([],Outputlist,Outputlist).    

  reverse([Head|Tail],List1,List2):-
      reverse(Tail,[Head|List1],List2).