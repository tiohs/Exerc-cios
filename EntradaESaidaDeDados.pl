
%L� e processa o termo lan�ado pelo usu�rio pelo teclado
lerTermo:-
read(X),
processarTermo(X).
processarTermo(fim):-!.

%processa e imprime o termo lan�ado pelo usu�rio pelo teclado

processarTermo(X):-
write(X),
lerTermo.