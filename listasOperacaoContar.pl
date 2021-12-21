%OPERAÇÃO CONTAR
%caso base
contar([],0).

%caso inditivo
contar([X|R],Resposta):-
contar(R,K),
Resposta is 1+K.

%OPERAÇÃO PERTENCE
%caso base -quando o elemento em causa é o cabeçalho
membro(X,[X|R]).

%caso indutivo -se não cabeçalho então pertence a parte restante  
membro(X,[Y|R]):-
membro(X,R).