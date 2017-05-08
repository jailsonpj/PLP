
classe_A(9500,1000000,classe_a).
classe_B(3501,9500,classe_b).
classe_C(701,3500,classe_c).
classe_D(0,700,classe_d).

classe(X,Y):-
	(classe_A(A,B,Y), X > A, X =< B),!;(classe_B(A,B,Y), X>=A,X=<B),!;(classe_C(A,B,Y),X>=A,X=<B),!;(classe_D(A,B,Y),X>=A,X=<B),!.