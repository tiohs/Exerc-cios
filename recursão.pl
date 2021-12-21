mdc(X,X,X).

%Indução

mdc(X,Y,Resposta):-
X>Y,
Xk is X-Y,
mdc(Xk,Y,Resposta).
mdc(X,Y,Resposta):-
Y>X,
Yk is Y-X,
mdc(X,Yk,Resposta).

%Somatorio 

%Caso Base 
soma_serie(0,0).
%Indução
soma_serie(N, Resposta):-
N>0,
K is N-1,
soma_serie(K,Rk),
Resposta is N+Rk.

% caso base 
fibo(0,0).
fibo(1,1).
fibo(2,1).

%Indução 
fibo(N,R):-
N>2