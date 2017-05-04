pai(ivo,eva).
pai(gil,rai).
pai(gil,clo).
pai(gil,ary).
pai(rai,noe).
pai(ary,gal).
mae(ana,eva).
mae(eva,noe).
mae(bia,rai).
mae(bia,clo).
mae(bia,ary).
mae(lia,gal).
mulher(ana).
mulher(eva).
mulher(bia).
mulher(clo).
mulher(lia).
mulher(gal).
homem(ivo).
homem(rai).
homem(noe).
homem(gil).
homem(ary).
gerou(X,Y):- pai(X,Y);mae(X,Y).
filho(X,Y):- homem(Y),pai(X,Y);mae(X,Y).
filha(X,Y):- mulher(Y),pai(X,Y);mae(X,Y).
irmao(X,Y):- (pai(Z,X),pai(Z,Y));(mae(D,X),mae(D,Y)),X\=Y.
tio(X,Y):- homem(X),gerou(Z,Y),irmao(Z,X).
tia(X,Y):- mulher(X),gerou(Z,Y),irmao(Z,X).
avo(X,Y):- homem(X), pai(Z,Y),pai(X,Z).
ava(X,Y):- mulher(X),gerou(Z,Y),filho(Z,X).
primo(X,Y):- pai(Z,Y),tio(Z,X).

%ancestral(X,Y):- pai(X,Y).
%ancestral(X,Y):- pai(X,Y),ancestral(Z,Y).
