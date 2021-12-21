data(7, abril, 67).
data(17, setembro, 1979).
data(11, agosto, 2000).

mes(X):-
data(_,X,_).

dias(D):-
data(D,_,_).

diaAno(D,A):-
data(D,_,A).

mesAno(X,A):-
data(_,X,A).

diasmes(D,X):-
data(D,X,_).