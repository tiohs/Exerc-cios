


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

