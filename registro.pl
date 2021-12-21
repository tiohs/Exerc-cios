cidadao(y07786HOO18,nome(edana,nectar), dataNascimento(28, maio, 1979),trabalho(bbc, 25.0000)).
cidadao('00786HOO12',nome(joão, edipo), dataNasciment(14, abril, 1970), trabalho(cnn, 32.000)).
cidadao('não tem',nome(chin, desconhecido), dataNascimento(07, novembro,'ano desconhecido'), trabalho(bbc, 'salario desconhecido')).
cidadao('não tem','nome desconhecido', 'data de nascimento', desempregado).

%Data 
data(7,abril,1967).
data(17,setembro,1979).
data(11,agosto,2000).

%Regra 
mes(X):-
data(_,X,_).

%Regra Dia 
dia(X):-
data(X,_,_).

%Regra ano 
ano(X):-
data(_,_,X).

%Regra dia ano
diaano(X,Y):-
data(Y,_,X).

client(3466,'Zele',485600,96352).
client(9356,'Luis',346134,184098).
client(1098,'Fula',293751,77959).

cliente(2344, 'Pedrosa', 354000, 82435).
cliente(5682, 'Vicente', 278089, 152375).
cliente(9685, 'Edilberto', 174905, 96759).


