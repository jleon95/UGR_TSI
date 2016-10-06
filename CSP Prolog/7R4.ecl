:-lib(ic).

resolver7a(Matriz,N) :-

	dim(Matriz,[N,N]),
	Matriz[1..N,1..N]::1..N*N,

	alldifferent(Matriz),

	Suma is N*(N*N+1)//2,

	(for(I,1,N), foreach(ED1,D1), foreach(ED2,D2), param(Matriz,N,Suma) do

		Suma #= sum(Matriz[I,1..N]),
		Suma #= sum(Matriz[1..N,I]),
		ED1 is Matriz[I,I],
		ED2 is Matriz[I,N-I+1]

	),

	Suma #= sum(D1),
	Suma #= sum(D2),

	labeling(Matriz).

resolver7b(Matriz,N) :-

	dim(Matriz,[N,N]),
	Matriz[1..N,1..N]::1..N,

	(for(I,1,N), param(Matriz,N) do

		Fila is Matriz[I,1..N],
		Columna is Matriz[1..N,I],
		alldifferent(Fila),
		alldifferent(Columna)

	),

	labeling(Matriz).