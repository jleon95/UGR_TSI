:-lib(ic).

resolver17(Jugadores,Pantalones) :-

	Jugadores = [Fede,Jose,Bibi,Tomas],
	Jugadores::[1..4],
	Pantalones = [Rojo,Azul,Cuadros,Naranja],
	Pantalones::[1..4],

	alldifferent(Jugadores),
	alldifferent(Pantalones),
	Fede + 1 #= Azul,
	Jose #= 2,
	Bibi #= Cuadros,
	Tomas #\= 1,
	Tomas #\= 4,
	Tomas #\= Naranja,

	labeling(Jugadores),
	labeling(Pantalones).