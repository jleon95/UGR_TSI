:-lib(ic).

resolver3 :-
	
	Nombres = ["T","E","S","F","D","I","N","K","R","A"],
	Variables = [T,E,S,F,D,I,N,K,R,A],
	Acarreos = [C1,C2,C3,C4,C5],
	Variables::[0..9],
	Acarreos::[0,1,2],

	alldifferent(Variables),
	T #\= 0,
	F #\= 0,
	D #\= 0,
	K #\= 0,
	E + E + E #= C1 * 10 + E,
	T + T + N + C1 #= C2 * 10 + T,
	S + S + I + C2 #= C3 * 10 + F,
	E + E + E + C3 #= C4 * 10 + A,
	T + F + D + C4 #= C5 * 10 + R,
	K #= C5,

	labeling(Variables),

	write_results(Nombres,Variables).

write_results(Nombres,Resultados) :-

	(foreach(X,Nombres),foreach(R,Resultados) do

		write(X),write(" "),write(R),writeln("")
	).