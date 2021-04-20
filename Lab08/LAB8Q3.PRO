domains
  list = integer*
predicates
  search(list, integer)
clauses
  search([X|_], X).
  search([_|T], X):- search(T,X).