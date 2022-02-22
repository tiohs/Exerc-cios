leitura:-
write('Digite qualquer termo, terminado com um ponto '),
read(X),
write('Você escreveu : '),
write(X).

cubo(X,R):-
R is X*X*X.

lerTermo:-
write('Digite o valor de X:'),
read(X),
processarTermo(X).
processarTermo(fim):-!.

processarTermo(X):-
write('O cubo do valor'),
write(X),
write('='),
cubo(X,R),
write(R),
nl,
lerTermo.