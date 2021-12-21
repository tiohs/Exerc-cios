%Factores parenttesco

pai(litox, mario).
pai(mario,lu).
pai(mario,lito).
pai(rui,leko).
mae(lu,kulu).
mae(rita,lito).
mae(rita,leko).

%Masculino Genetico

masculino(mario).
masculino(rui).
masculino(kulu).
masculino(leko).

%Femenino Genetico

femenino(rita).
femenino(lu).

%Regras Padastro 
padrasto(M,L):-
pai(M,A),
pai(W,L),
mae(D,A),
mae(D,L),
M\==W.

% Avô 
avo(X,Y):-
masculino(Y),
pai(X,D),
pai(D,Y).

%Feliz 
fliz(A):-pai(A,_).