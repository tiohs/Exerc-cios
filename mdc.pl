mdc(X,X,X).
mdc(X,Y,Reposta):-
X>Y,
Xd is X-Y,
mdc(Xd,Y,Reposta).
mdc(X,Y,Reposta):-
Y>X,
Yd is Y-X,
mdc(X,Yd,Reposta).