torreHanoi(N):-
move(N,torreA,torreB,torreC).
move(0,_,_,_).
move(N,A,B,C):-
N1 is N-1,
move(N1,A,C,B),
informa(A,B),
move(N1,C,B,A).
informa(A,B):-
write('Mova o disco da'),
write(A),
write('para a'),
write(B),
nl.