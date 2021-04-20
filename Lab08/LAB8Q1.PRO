domains
  instr, outstr = symbol*
  M, N = integer
predicates
  substr(instr, M, N, outstr)
clauses
  substr([H|_], 1, 1, [H]).
  substr([H|T], 1, N, [H|T1]):-
  N>1, N1=N-1, substr(T, 1, N1, T1).
  substr([_|T], M, N, T1):-
  M>1, M1=M-1, N1=N-1, substr(T, M1, N1, T1).