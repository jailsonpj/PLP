estrada(a,b,15).
estrada(a,c,6).
estrada(a,d,4).
estrada(b,e,3).
estrada(b,g,12).
estrada(c,d,4).
estrada(c,h,9).
estrada(d,e,7).
estrada(d,h,6).
estrada(e,f,4).
estrada(e,h,2).
estrada(f,g,9).
estrada(f,j,3).
estrada(g,i,14).
estrada(h,j,4).
estrada(h,i,6).

%custo do caminho
dist(X,Y,C):- estrada(X,Y,C),!.
dist(X,Y,C):- estrada(X,Z,C1),dist(Z,Y,C2), C is C1+C2.

%caminho(A,B,[A|B],K):- arco(A,B,K),!.
%caminho(A,B,[A|R],K):- arco(B,X,K),caminho(B,X,[X|R],K1),arco(A,X,K2),K is K1+K2.
%custo do caminho e criando o caminho, e colocando em uma lista
caminho(X,Y,[X|Y],C):-estrada(X,Y,C),!.
caminho(X,Y,[X|Z],C):- estrada(X,Z,C1),caminho(Z,Y,[Z|Y],C2),C is C1+C2.

