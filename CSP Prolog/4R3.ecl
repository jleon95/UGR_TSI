:-lib(ic).

invitar :-

	Nombres = ["Pedro","Carlos","Rosa","Teresa"],
	Invitados = [Pedro,Carlos,Rosa,Teresa],
	Invitados::[0,1],

	(Pedro #= 1;
	Carlos #= 1),
	(Rosa #= 1;
	Carlos #= 1),
	(Rosa #= 1;
	Teresa #= 1),
	Rosa #\= Pedro,
	Teresa #\= Carlos,

	labeling(Invitados),

	write_results(Nombres,Invitados).

familias :-

	Nombres = ["A","B","C","D"],
	Casas = [A,B,C,D],
	Casas::[1..4],

	alldifferent(Casas),
	D #< B,
	A #< B,
	(B - C #> 1;
	C - B #> 1),
	D #\= 2,
	C #\= 4,
	B - A #= 2,

	labeling(Casas),

	write_results(Nombres,Casas).


%Extra: 7

siete :-

	Nombres = ["A","B","C","D"],
	Variables = [A,B,C,D],
	Variables::[1..4],

	A #< B,
	D #< C,
	A #= C,
	D #< A,
	B #= C,

	labeling(Variables),

	write_results(Nombres,Variables).

write_list(List) :-

	write("Lista: "),
	( foreach(X,List) do
	write(X)
	).

write_results(Nombres,Resultados) :-

	(foreach(X,Nombres),foreach(R,Resultados) do

		write(X),write(" "),write(R),writeln("")
	).