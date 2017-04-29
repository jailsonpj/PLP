arco(a,b,15).
arco(a,c,6).
arco(a,d,4).
arco(b,e,3).
arco(b,g,12).
arco(c,d,4).
arco(c,h,9).
arco(d,e,7).
arco(d,h,6).
arco(e,f,4).
arco(e,h,2).
arco(f,g,9).
arco(f,j,3).
arco(g,i,14).
arco(h,j,4).
arco(h,i,6).

%custo do caminho
dist(X,Y,C):- estrada(X,Y,C),!.
dist(X,Y,C):- estrada(X,Z,C1),dist(Z,Y,C2), C is C1+C2.

%caminho(A,B,[A|B],K):- arco(A,B,K),!.
%caminho(A,B,[A|R],K):- arco(B,X,K),caminho(B,X,[X|R],K1),arco(A,X,K2),K is K1+K2.
%custo do caminho e criando o caminho, e colocando em uma lista
caminho(X,Y,[X|Y],C):-estrada(X,Y,C),!.
caminho(X,Y,[X|Z],C):- estrada(X,Z,C1),caminho(Z,Y,[Z|Y],C2),C is C1+C2.

