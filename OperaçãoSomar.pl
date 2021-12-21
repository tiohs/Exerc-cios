%caso base
somar([],0).

%caso Indutivo
somar([X|R],Resposta):-
somar(R,K),
Resposta is X+K.



%OPERAÇÃO COMPARAR
%caso base
contar([],0).
contar([_|R],T):-
contar(R,K),
T is 1+K.

%agora incorporar a rotina contar na rotina comparar
igual([],[]).

igual([X|R],[X1|R1]):-
X = X1,
contar(R,K),
contar(R1,K1),
K = K1,
igual(R,R1).



%OPERAÇÃO SUBCONJUNTO
%DEFINIR A ROTINA PERTENCE
pertence(X,[X|R]).
pertence(E,[X|R]):-
pertence(E,R).

%incorporar rotina contar na rotina subconjunto
subconjunto([],L).
subconjunto([X|R],L):-
pertence(X,L),
subconjunto(K,L).