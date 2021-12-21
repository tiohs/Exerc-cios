pai(juca, leko).
pai(juca, dina).
pai(leko, leo).
pai(leko, lita).
pai(leo, vado).
pai(leo, ruka).
pai(zito, mauro).
m�e(dina, zito).
m�e(dina, minga).
masculino(juca).
masculino(leko).
masculino(leo).
masculino(vado).
masculino(ruca).
masculino(zito).
masculino(mauro).
femenino(dina).
femenino(minga).
femenino(lita).

av�(A, B):-
pai(A, R),
pai(R, B),
masculino(A),
masculino(R).

av�(A, B):-
pai(A, R),
m�e(R, B),
masculino(A),
femenino(R).

av�(Z, P):-
m�e(Z, M),
m�e(M, P),
femenino(Z),
masculino(M).