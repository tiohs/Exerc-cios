pai(juca, leko).
pai(juca, dina).
pai(leko, leo).
pai(leko, lita).
pai(leo, vado).
pai(leo, ruka).
pai(zito, mauro).
mãe(dina, zito).
mãe(dina, minga).
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

avô(A, B):-
pai(A, R),
pai(R, B),
masculino(A),
masculino(R).

avô(A, B):-
pai(A, R),
mãe(R, B),
masculino(A),
femenino(R).

avó(Z, P):-
mãe(Z, M),
mãe(M, P),
femenino(Z),
masculino(M).