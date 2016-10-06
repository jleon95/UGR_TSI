%Dos matrices, una con valores [0,1] que representen asignaciones trabajador-producto
%Otra con los costes de las asignaciones.
%Al sumar los Vij*Cij, debe salir >= 19.

:-lib(ic).

resolver12a(Asignaciones,Costes,Productividad) :-

	dim(Asignaciones,[4,4]),
	dim(Costes,[4,4]),
	Asignaciones[1..4,1..4]::[0,1],
	Costes[1..4,1..4]::[1..9],

	(for(I,1,4), param(Asignaciones,Costes,Valores) do

		1 #= sum(Asignaciones[I,1..4]),

		(for(J,1,4), param(I,Asignaciones,Costes,Suma) do

			subscript(Asignaciones,[I,J],A),
			subscript(Costes,[I,J],C),
			Aux is A*C,
			Suma is Suma + Aux

		),

		Valores[I] is Suma

	),

	Productividad is sum(Valores[1..4]),

	19 #>= Productividad,

	labeling(Asignaciones),
	labeling(Costes).






resolver12b(Trabajadores) :-

	Trabajadores = [W1,W2,W3,W4],
	Trabajadores::[1..4],

	element(W1, [7,1,3,4], EW1),
	element(W2, [8,2,5,1], EW2),
	element(W3, [4,3,7,2], EW3),
	element(W4, [3,1,6,3], EW4),

	alldifferent(Trabajadores),
	EW1+EW2+EW3+EW4 #>= 19,

	search(Trabajadores,0,largest,indomain_max,complete,[]).

resolver12c(Trabajos) :-

	Trabajos = [P1,P2,P3,P4],
	Trabajos::[1..4],

	element(P1, [7,8,4,3], EP1),
	element(P2, [1,2,3,1], EP2),
	element(P3, [3,5,7,6], EP3),
	element(P4, [4,1,2,3], EP4),

	alldifferent(Trabajos),
	EP1+EP2+EP3+EP4 #>= 19,

	search(Trabajos,0,largest,indomain_max,complete,[]).