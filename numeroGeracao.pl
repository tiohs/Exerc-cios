pai(dino,z�).
pai(z�,lito).
pai(lito,vera).
pai(lito,kito).
%caso base
nrGera��es(X,Y,1):-
pai(X,Y).
%caso indutivo
nrGera��es(X,Y,N):-
pai(X,K),
nrGera��es(K,Y,Ng),
N is 1 + Ng.