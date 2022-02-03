pai(juca, leko).
pai(juca, dina).
pai(leko, leo).
pai(leko, lita).
pai(leo, vado).
pai(leo, ruka).
pai(zito, mauro).
mae(dina, zito).
mae(dina, minga).
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

ava(A, B):-
pai(A, R),
pai(R, B),
masculino(A),
masculino(R).

ava(A, B):-
pai(A, R),
mae(R, B),
masculino(A),
femenino(R).

ava(Z, P):-
mae(Z, M),
mae(M, P),
femenino(Z),
masculino(M).