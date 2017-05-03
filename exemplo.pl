numero :- write('digite numero'),nl,read(X), processa(X).
processa(fim) :- !.
processa(N) :- C is N*N*N, write(C),nl,numero.
