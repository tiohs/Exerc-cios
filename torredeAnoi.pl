torreHanoi(N):-
move(N,torreA,torreC,torreB).
move(0,_,_,_).
move(N,A,B,C):-
N1 is N-1,
move(N1,A,C,B),
informa(A,B),   
move(N1,C,B,A).
informa(A,B):-
write('Mova o disco da'),
write('-'),
write(A),
write(' para a '),
write('-'),
write(B),
nl.

