domains
  x = integer
  
predicates
  fibonacci
  find(x, x, x)

clauses
  fibonacci:-
  write("Enter the number of terms: "),
  readint(X), write(0, " "), write(1, " "), find(X, 0, 1).

  find(N, A, B):-
  N > 2, C = A + B, N1 = N - 1, write(C, " "), find(N1, B, C).