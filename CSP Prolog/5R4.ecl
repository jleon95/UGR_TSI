:-lib(ic).
:-lib(ic_global).

resolver5(X) :-

	dim(X,[10]),
	X[1..10]::[0..9],

	(for(I,1,10), param(X) do
		subscript(X,[I],N),
		J is I-1,
		occurrences(J,X,N)
	),

	labeling(X).