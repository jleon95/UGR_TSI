path(a,b).
path(a,c).
path(b,d).
path(c,d).
path(d,e).

camino(X,Y) :-

	path(X,Y);
	camino(X,Z),
	camino(Z,Y).