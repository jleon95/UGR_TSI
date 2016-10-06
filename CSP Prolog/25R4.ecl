:-lib(fd).
:-lib(fd_search).

resolver25(Mochila) :-

	Mochila = [Map,Compass,Water,Sandwich,Glucose,Tin,Banana,Apple,Cheese,Beer,SuntanCream,Camera],
	Mochila::[0,1],

	Peso #= 9*Map + 13*Compass + 153*Water + 50*Sandwich + 15*Glucose + 68*Tin + 27*Banana + 39*Apple + 23*Cheese + 52*Beer + 11*SuntanCream + 32*Camera,

	Peso #<= 275,

	Preferencia #= 150*Map + 35*Compass + 200*Water + 160*Sandwich + 60*Glucose + 45*Tin + 60*Banana + 40*Apple + 30*Cheese + 10*Beer + 70*SuntanCream + 30*Camera,

	Preferencia_n #= -Preferencia,

	minimize(labeling(Mochila),Preferencia_n).