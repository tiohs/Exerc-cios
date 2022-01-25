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
N>2,
N1 is N-2,
N2 is N-2,
fibo(N1,R1),
fibo(N2,R2),
R is R1+R2.

% Factorial 

%Base 
fact(0,1).
fact(1,1).
% Indução

fact(N,F):-
N>1,
N1 is N-1,
fact(N1,F1),
F is N*F1.

% Regra número de gerção 
pai(dino,zé).
pai(zé,lito).
pai(lito,vera).
pai(lito,kito).
mae(vera,bela).
mae(vera,simao).
pai(kito,dudu).
pai(kito,kicas).
% Caso base 
nrGeracao(X,Y,1):-
pai(X,Y).

nrGeracao(X,Y,1):-
mae(X,Y).

%Caso indutivo
nrGeracao(X,Y,N):-
pai(X,K),
nrGeracao(K,Y,Ng),
N is 1 + Ng.
