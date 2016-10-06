tarea("A","Levantar muros",7,[]).
tarea("B","Carpintería de tejado",3,["A"]).
tarea("C","Poner tejado",1,["B"]).
tarea("D","Instalación eléctrica",8,["A"]).
tarea("E","Pintado fachada",2,["C","D"]).
tarea("F","Ventanas",1,["C","D"]).
tarea("G","Jardín",1,["C","D"]).
tarea("H","Techado",3,["A"]).
tarea("I","Pintado interior",2,["F","H"]).

precede("A","B").
precede("A","D").
precede("A","H").
precede("B","C").
precede("C","E").
precede("D","E").
precede("C","F").
precede("D","F").
precede("F","I").
precede("H","I").

lista_identificadores(Identificadores) :-

	findall(X,tarea(X,_,_,_),Identificadores),
	write_list(Identificadores).

lista_descripciones(Descripciones) :-

	findall(X,tarea(_,X,_,_),Descripciones),
	write_list(Descripciones).

lista_duraciones(Duraciones) :-

	findall(X,tarea(_,_,X,_),Duraciones),
	write_list(Duraciones).

lista_predecesoras(Predecesoras) :-

	findall(X,tarea(_,_,_,X),Predecesoras),
	write_list(Predecesoras).

lista_sucesoras(Sucesoras) :-

	tarea(X,_,_,_),
	(precede(X,Y),
	append(listaX,Y,listaX),
	fail),
	append(Sucesoras,listaX,Sucesoras),
	write_list(listaX),
	fail,
	write_list(Sucesoras).


write_list(List) :-

	write("Lista: "),
	( foreach(X,List) do
	write(X)
	).
