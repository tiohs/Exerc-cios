mdc(X,X,X).

%Indução

mdc(X,Y,Resposta):-
X>Y,
Xk is X-Y,
mdc(Xk,Y,Resposta).
mdc(X,Y,Resposta):-
Y>X,
Yk is Y-X,
mdc(K,YK,Resposta).
