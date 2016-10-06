:-lib(fd).
:-lib(fd_search).
%:-lib(gfd). Esta librería es la que contiene la función circuit, pero tiene conflictos con fd.

resolver13(Ciudades) :-

	Ciudades = [C1,C2,C3,C4,C5,C6,C7],
	Ciudades::[1..7],

	element(C1, [0,4,8,10,7,14,15], EC1),
	element(C2, [4,0,7,7,10,12,5], EC2),
	element(C3, [8,7,0,4,6,8,10], EC3),
	element(C4, [10,7,4,0,2,5,8], EC4),
	element(C5, [7,10,6,2,0,6,7], EC5),
	element(C6, [14,12,8,5,6,0,5], EC6),
	element(C7, [15,5,10,8,7,5,0], EC7),

	gfd:circuit(Ciudades),

	Coste #= EC1 + EC2 + EC3+ EC4 + EC5 + EC6 + EC7,

	minimize(search(Ciudades,0,first_fail,indomain_min,complete,[]),Coste).