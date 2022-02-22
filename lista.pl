pai(dino,ze).
pai(ze,lito).
pai(lito,vera).
pai(lito,kito).
% caso base
gerações(X,Y,[X]):-
pai(X,Y).
% caso indutivo
gerações(X,Y,[X|R]):-
pai(X,K),
gerações(K,Y,R).

% defina primeiro a rotina pertence.
pertence(X,[X|R]).
pertence(E,[X|R]):-
pertence(E,R).
% agora incorporar a rotina pertence na rotina subconjunto
subconjunto([],L).
subconjunto([X|R],L):-
pertence(X,L),
subconjunto(K,L).

% defina primeiro a rotina pertence.
pertence(X,[X|R]).
pertence(E,[_|R]):-
pertence(E,R).
% agora incorporar a rotina pertence na rotina intersecção
intersecção([ ],L,[ ]).
intersecção([X|R1],L2,[X|R2]):-
pertence(X,L2),
intersecção(R1,L2,R2).
intersecção([_|R1],L2, R2):-
intersecção(R1,L2,R2).