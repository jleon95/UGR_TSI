:-lib(fd).
:-lib(fd_search).

resolver22(Monedas,CantidadMonedas,Dinero) :-

	Monedas = [DosEuros,UnEuro,CincuentaC,VeinteC,DiezC,CincoC,DosC,UnC],
	Monedas::[0..200], % 200 por poner un límite.

	200*DosEuros + 100*UnEuro + 50*CincuentaC + 20*VeinteC + 10*DiezC + 5*CincoC + 2*DosC + UnC #= Dinero,

	DosEuros + UnEuro + CincuentaC + VeinteC + DiezC + CincoC + DosC + UnC #= CantidadMonedas,

	%labeling(Monedas).
	minimize(search(Monedas,0,smallest,indomain_max,complete,[]),CantidadMonedas).