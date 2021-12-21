%OPERA��O CONTAR
%caso base
contar([],0).

%caso inditivo
contar([X|R],Resposta):-
contar(R,K),
Resposta is 1+K.

%OPERA��O PERTENCE
%caso base -quando o elemento em causa � o cabe�alho
membro(X,[X|R]).

%caso indutivo -se n�o cabe�alho ent�o pertence a parte restante  
membro(X,[Y|R]):-
membro(X,R).