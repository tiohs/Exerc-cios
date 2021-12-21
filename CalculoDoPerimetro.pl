perimetro(A,B,R):-
R is (2*A)+(2*B).
lertermo:-
write('Insira O Valor de A: '),
read(A),
write('Insira O Valor de B: '),
read(B),
calcularPerimetro(A,B).
calcularPerimetro(fim):-!.

calcularPerimetro(A,B):-
write('Perimetro = '),
perimetro(A,B,R),
write(R).