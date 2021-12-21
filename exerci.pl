(%OPERAÇÃO CONTAR
%caso base
contar([],0).

caso inditivo
conta([0,10],Resposta):-
contar(10,K),
Resposta is 1+K.


