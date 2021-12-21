
%JUNÇÃO DE LISTA

%caso base 
concatenar([],L,L).

%se a lista n for vazia
concatenar([X|L1],L2,[X|L3]):-
concatenar(L1,L2,L3).


conc([L1,L2,L3,LR]):-
conc(L1,L2,L12),
conc(L13,L3,LR).



