


potencia(b,ex){�(=1,para exp=0@ =b,para exp=1@@,&=b*potencia(b,expx-1),para exp>1)�
R:potencia(_,0,1).
Potencia(B,1,B).

Potencia(B,E,R):-
E>1,
K is E-1,
Potencia(B,K,Rp),
R is B* Rp.
Considerando a seguinte especifica��o especifica��o escreva a regra recursiva designada por maxValor(X,Y,Z) entre dois n�meros inteiro.
max?(X,Y)={�(=X,para  &X>Y@=Y,para X<Y)�
R:max(X,Y,X):-
X>Y.
Max(X,Y,Y):-
X<Y.

	Registe todos factos possiveis e derive a regra gera��es(X,Y,NrG),onde X � antepassado de Y e NrG corresponde o n�meros de gera��es.

mae(vera,marta).
mae(marta,kicas).
mae(marta,lito).
mae(marta,bela).
mae(bela,ju).
mae(bela,gil).
pai(kito,marta).
pai(gil,ana).
pai(kicas,duda).
masculino(kito).
masculino(lito).
masculino(ju).
masculino(gil).
masculino(kicas).
feminino(vera).
feminino(marta).
feminino(bela).
feminino(duda).
feminino(ana).




R: nrGera��es(X,Y,1):-
mae(X,Y);
pai(X,Y).

nrGera��es(X,Y,Nr):-
mae(X,K),
nrGera��es(K,Y,Ng),
Nr is 1+Ng.

nrGera��es(X,Y,Nr):-
pai(X,K),
nrGera��es(K,Y,Ng),
Nr is 1+Ng.

pai(rui,rita).
pai(rui,luis).
pai(luis,bula).
mae(joana,luis).
mae(julia,bula).
mae(rita,dina).
masculino(rui).
masculino(luis).
masculino(bula).
feminino(joana).
feminino(julia).
feminino(rita).
feminino(dina).
R: nrGera��es(X,Y,1):-
mae(X,Y);
pai(X,Y).

nrGera��es(X,Y,Nr):-
pai(X,K),
nrGera��es(K,Y,Ng),
Nr is 1+Ng.

nrGera��es(X,Y,Nr):-
mae(X,K),
nrGera��es(K,Y,Ng),
Nr is 1+Ng.

a)45+4?800-78.
R:45+4=\=800-78.
b)Marcela=Marta.
R:Marcela==Marta.
b)escreve uma consulta que permita saber o n de gera�oes entre vera e ana.
R:nrGera��es(vera,ana,Nr).

b)escreve uma consulta que permita saber o n de gera�oes entre Branca e Diva.
R:nrGera��es(branca,diva,R).

-See('compras.doc').
R:permite efectuar abertura para leitura de um ficheiro do Microsoft word versao 2003.
-tell('dados.txt').
R:este predicado � usado para efectuar abertura de um ficheiro de texto para escrita.

areaTotal(R,V,At):-
At is pi*R^2+pi*R*sqrt((R^2+9*V^2)/(pi^2*R^4)).

ler:-
write('Digite o valor de Raio:'),
read(R),
write('digite o valor de V:'),
read(V),
processar(R,V),
processar(fim,fim):-!.

processar(R,V):-
write('Area Total:'),
write('='),
areaTotal(R,V,At),
write(At),
nl,
ler.
-----
tra(R1,R2,C,L,W):-
W is sqrt (R1^2*C-L)/L*C*(C*R2^2-L)).
ler:-
write('digite o valor de R1:'),
read(R1),
write('digite o valor de R2:'),
read(R2),
write('digite o valor de C:'),
read(C),
write('digite o valor de L:'),
read(L),
processar(R1,R2,C,L).
processar(fim,fim,fim,fim):-!.

processar(R1,R2,C,L):-
write('W'),
write('='),
tra(R1,R2,C,L,W),
write(W),
nl,
ler.

