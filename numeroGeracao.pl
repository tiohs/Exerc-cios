pai(dino,zé).
pai(zé,lito).
pai(lito,vera).
pai(lito,kito).
%caso base
nrGerações(X,Y,1):-
pai(X,Y).
%caso indutivo
nrGerações(X,Y,N):-
pai(X,K),
nrGerações(K,Y,Ng),
N is 1 + Ng.