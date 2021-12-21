
%Lê e processa o termo lançado pelo usuário pelo teclado
lerTermo:-
read(X),
processarTermo(X).
processarTermo(fim):-!.

%processa e imprime o termo lançado pelo usuário pelo teclado

processarTermo(X):-
write(X),
lerTermo.