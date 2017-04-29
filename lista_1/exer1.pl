% x  pai de Y
pai(joao,joaquim).
pai(joao,joaquina).
pai(joaquim,marina).
pai(joaquim,martinha).
pai(alcindo,hugo).
pai(alcindo,artur).
pai(alcindo,balbina).
pai(justino,alcides).
pai(andre,jorge).
pai(jorge,alcineia).
pai(alcides,augusta).

% x é mae de y
mae(maria,joaquim).
mae(maria,joaquina).
mae(andreia,marina).
mae(andreia,martinha).
mae(joaquina,hugo).
mae(joaquina,artur).
mae(joaquina,balbina).
mae(martinha,alcides).
mae(balbina,jorge).
mae(alcineia,estevao).

% x é mulher
mulher(maria).
mulher(andreia).
mulher(joaquina).
mulher(marina).
mulher(martinha).
mulher(balbina).
mulher(alcineia).
mulher(augusta).

% x é homem
homem(joao).
homem(joaquim).
homem(alcindo).
homem(justino).
homem(alcides).
homem(hugo).
homem(andre).
homem(jorge).
homem(estevao).

% regra para encontrar quem gerou X
gerou(X,Y):- pai(X,Y);mae(X,Y).

% regra para encontra de quem x é filho
filho(X,Y):- homem(Y),pai(X,Y);mae(X,Y).

% regra para encontrar de quem x é filha
filha(X,Y):- mulher(Y),pai(X,Y);mae(X,Y).

% regra pra dizer que x é irmao de y
irmao(X,Y):- homem(Y),(pai(Z,X),pai(Z,Y));(mae(D,X),mae(D,Y)),X\=Y.
irma(X,Y):- mulher(Y),(pai(Z,X),pai(Z,Y));(mae(D,X),mae(D,Y)),X\=Y.

% regra para dizer que x é tio de Y 
tio(X,Y):- homem(Y),gerou(Z,Y),irmao(Z,X).
tia(X,Y):- mulher(Y),gerou(Z,Y),irmao(Z,X).

% regra para dizer que x é primo de y
primo(X,Y):- pai(Z,Y),tio(Z,X).

% regra para dizer que x é ancestral de y
ancestral(X,Y):- pai(X,Y).
ancestral(X,Y):- pai(X,Y),ancestral(Z,Y).
