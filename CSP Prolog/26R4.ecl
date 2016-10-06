:-lib(fd).
:-lib(fd_search).

resolver26(Tareas) :-

	Tareas = [A,B,C,D,E,F,G,H,I,J],

	Tareas::[1..65],

	alldifferent(Tareas), % Asumiendo que no pueden paralelizarse.
	A + 7 #<= J,
	B + 7 #<= J,
	C + 7 #<= J,
	D + 2 #<= J,
	E + 2 #<= J,

	A + 7 #<= C,
	D + 2 #<= C,
	E + 2 #<= C,

	D + 2 #<= E,
	D + 2 #<= F,

	C + 7 #<= H,
	C + 7 #<= I,
	E + 2 #<= H,
	E + 2 #<= I,
	F + 2 #<= H,
	F + 2 #<= I,

	F + 2 #<= G,

	A + 7 #<= B,

	G + 2 #<= L,
	H + 8 #<= L,
	I + 8 #<= L,
	J + 18 #<= L,

	minimize(labeling(Tareas),L).