:-lib(fd).
:-lib(cumulative).

resolver24(Tareas) :-

	Nombres = ["A","B","C","D","E","F","G","H","I"],
	Descripciones = ["Levantar muros",
					 "Carpinteria de tejado",
					 "Poner tejado",
					 "Instalacion electrica",
					 "Pintado fachada",
					 "Ventanas",
					 "Jardin",
					 "Techado",
					 "Pintado interior"],
	Tareas = [A,B,C,D,E,F,G,H,I],
	Tareas::[1..30],

	alldifferent(Tareas),
	A + 7 #<= B,
	A + 7 #<= D,
	A + 7 #<= H,
	B + 3 #<= C,
	C + 1 #<= E,
	C + 1 #<= F,
	C + 1 #<= G,
	D + 8 #<= E,
	D + 8 #<= F,
	D + 8 #<= G,
	F + 1 #<= I,
	H + 3 #<= I,
	E + 2 #<= L,
	G + 1 #<= L,
	I + 2 #<= L,
	L #<= 30,

	minimize(labeling(Tareas),L),

	write_results(Nombres,Descripciones,Tareas).

resolver24a(Tareas) :-

	Nombres = ["A","B","C","D","E","F","G","H","I"],
	Descripciones = ["Levantar muros",
					 "Carpinteria de tejado",
					 "Poner tejado",
					 "Instalacion electrica",
					 "Pintado fachada",
					 "Ventanas",
					 "Jardin",
					 "Techado",
					 "Pintado interior"],
	Tareas = [A,B,C,D,E,F,G,H,I],
	Tareas::[1..30],
	Trabajadores = [2,3,2,2,1,2,1,1,2],

	alldifferent(Tareas),
	A + 7 #<= B,
	A + 7 #<= D,
	A + 7 #<= H,
	B + 3 #<= C,
	C + 1 #<= E,
	C + 1 #<= F,
	C + 1 #<= G,
	D + 8 #<= E,
	D + 8 #<= F,
	D + 8 #<= G,
	F + 1 #<= I,
	H + 3 #<= I,
	E + 2 #<= L,
	G + 1 #<= L,
	I + 2 #<= L,
	L #<= 30,

	cumulative(Tareas,[7,3,1,8,2,1,1,3,2],Trabajadores,3),

	minimize(labeling(Tareas),L),

	write_results2(Nombres,Descripciones,Trabajadores,Tareas).

write_results(Nombres,Descripciones,Tareas) :-

	(foreach(N,Nombres),foreach(D,Descripciones),foreach(T,Tareas) do

		write("La tarea "),write(N),write(", "),write(D),write(", empieza en "),write(T),writeln("")
	).

write_results2(Nombres,Descripciones,Trabajadores,Tareas) :-

	(foreach(N,Nombres),foreach(D,Descripciones),foreach(Tr,Trabajadores),foreach(T,Tareas) do

		write("La tarea "),write(N),write(", "),write(D),write(", que requiere "),write(Tr),write(" trabajadores, empieza en "),write(T),writeln("")
	).