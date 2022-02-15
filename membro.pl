%Membroou pertece 

membro(X,[X|R]).
membro(X,[Y|R]):-
membro(X,R).

%Defina a rotina que faz o papel de processar.
dobro(N,R):-
R is 2*N.
%Agora incorporar a rotina dobro na rotina processar
transformar([],[]).
transformar([X1|Resto1],[X2|Resto2]):-
dobro(X1,X2),
transformar(Resto1,Resto2).

% Lista concatenar 

concatenar([],L,L).
concatenar([X|L1],L2,[X|L3]):-
concatenar(L1,L2,L3).

% adicionar na Lista
adicionar(X,L,[X|L]).

% excluir
excluir(X,[X|L],L).

excluir(E,[X|L],[X|L1]):-
excluir(E,L,L1).

% Exluir pocisão

excluir_na_posição(1,[X|R],R).
excluir_na_posição(N,[X|R],[X|R1]):-
N>1,
K is N-1,
excluir_na_posição(K,R,R1).

% Soma de elemento 

% caso base
somar([],0).
% caso indutivo
somar([X|R],Resposta):-
somar(R,K),
Resposta is X+K.

% Comparação

% defina primeiro a rotina contar.
contar([],0).
contar([_|R],T):-
contar(R,K),
T is 1+K.
% agora incorporar a rotina contar na rotina comparar
igual([],[]).
igual([X|R],[X1|R1]):-
X=X1,
contar(R,K),
contar(R1,K1),
K=K1,
igual(R,R1).