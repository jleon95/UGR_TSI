:-lib(ic).

resolver16(Sudoku) :-

	Sudoku = []([](_,1,_,6,_,7,_,_,4),
				[](_,4,2,_,_,_,_,_,_),
				[](8,7,_,3,_,_,6,_,_),
				[](_,8,_,_,7,_,_,2,_),
				[](_,_,_,8,9,3,_,_,_),
				[](_,3,_,_,6,_,_,1,_),
				[](_,_,8,_,_,6,_,4,5),
				[](_,_,_,_,_,_,1,7,_),
				[](4,_,_,9,_,8,_,6,_)
				),

	Sudoku::[1..9],

	(for(I,1,9), param(Sudoku) do

		Fila is Sudoku[I,1..9],
		Columna is Sudoku[1..9,I],
		alldifferent(Fila),
		alldifferent(Columna)

	),

	(for(I,0,2), param(Sudoku) do

		(for(J,0,2), param(Sudoku,I) do

			Subfila1 is Sudoku[(I*3)+1,(J*3)+1..(J*3)+3],
			Subfila2 is Sudoku[(I*3)+2,(J*3)+1..(J*3)+3],
			Subfila3 is Sudoku[(I*3)+3,(J*3)+1..(J*3)+3],
			append(Subfila1,Subfila2,Aux),
			append(Aux,Subfila3,Aux2),
			alldifferent(Aux2)

		)
	),

	search(Sudoku,0,first_fail,indomain_min,complete,[]),

	imprime(Sudoku).

imprime(Sudoku) :-

	(for(I,1,9), param(Sudoku) do

	    (for(J,1,9), param(Sudoku,I) do

	    	X is Sudoku[I,J],

			(var(X) -> write("  _");
			printf(" %2d", [X])
			)

	    ), nl

	), nl.