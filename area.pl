area(H,P,A)

ler:-
writi('H'),
read(H),
writi('P'),
read(P),
processar(H,P),
processar(fim,fim):-!
processar(H,P):-
writi('Area'),
writi('='),
processar(H,P,A),
writi(A),
nl,
ler.