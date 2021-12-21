
%adicionar elemento
adicionar(X,L,[X|L]).

%s� funciona quando sabemos o identificador do elemento
%excluir elemento

%caso base
excluir(X,[X|L],L).

excluir(E,[X|L],[X|L1]):-
excluir(E,L,L1).

%excluir na posi��o
excluir_na_posicao(1,[X|R],R).

excluir_na_posicao(N,[X|R],[X|R1]):-
N>1,
K is N-1,
excluir_na_posicao(K,R,R1).