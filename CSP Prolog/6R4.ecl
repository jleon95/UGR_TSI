:-lib(ic).

resolver6(X) :-

	dim(X,[10]),
	X[1..10]::[1..10],

	alldifferent(X),
	subscript(X,[7],K),
	K #= 6,

	(for(I,2,10), param(X) do
		subscript(X,[I],N),
		J is I-1,
		subscript(X,[J],M),
		(N - M #= 3;
		M - N #= 2)
		
	),

	labeling(X).