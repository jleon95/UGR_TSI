:-lib(ic).

resolver2 :-
	
	Nombres = ["S","E","N","D","M","O","R","Y"],
	Variables = [S,E,N,D,M,O,R,Y],
	Acarreos = [C1,C2,C3,C4],
	Variables::[0..9],
	Acarreos::[0,1],

	alldifferent(Variables),
	S #\= 0,
	M #\= 0,
	D + E #= 10 * C1 + Y,
	N + R + C1 #= 10 * C2 + E,
	E + O + C2 #= 10 * C3 + N,
	S + M + C3 #= 10 * C4 + O,
	M #= C4,

	labeling(Variables),

	write_results(Nombres,Variables).

write_results(Nombres,Resultados) :-

	(foreach(X,Nombres),foreach(R,Resultados) do

		write(X),write(" "),write(R),writeln("")
	).