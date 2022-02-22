lerTermo:- 
read(X),
processarTermo(X).
processarTermo(fim):-!.

processarTermo(X):-
write(X),
lerTermo.