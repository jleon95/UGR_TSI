:-lib(ic).

resolver20(Edades) :-

	Edades = [Alex,Padre,Madre],
	Edades::[1..1000],

	Alex + Padre + Madre #= 840,
	Alex * 6 #= Padre,
	(Alex + X)*2 #= Padre + X,
	Alex + X + Padre + X + Madre + X #= 1680,

	labeling(Edades).