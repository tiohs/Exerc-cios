
%definir o dobro.
dobro(N,R):-
R is 2*N.

%INCORPORAR A ROTINA DOBRO NA ROTINA PROCESSAR.
transformar([],[]).
transformar([X1|Resto1],[X2|Resto2]):-
dobro(X1,X2),
transformar(Resto1,Resto2).

%Definir Raiz Quadrada
raiz(N,R):-
R is sqrt(N).

%caso base
transformarRaiz([],[]).
transformarRaiz([X1|Resto1],[X2|Resto2]):-
raiz(X1,X2),
transformarRaiz(Resto1,Resto2).