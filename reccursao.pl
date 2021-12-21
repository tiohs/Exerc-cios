
%% caso base                                                                                                                                                                                                                                                                                                            
mdc(X,X,X).
%% caso indutivo
mdc(X,Y,R):-
X>Y,
Xk is X-Y,
mdc(Xk,Y,R).
mdc(X,Y,R):-
Y>X,
Yk is Y-X,
mdc(mX,Yk,R).