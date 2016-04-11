

sol[beta_, omega_, t_] = x[t] /. DSolve[

					{ x''[t] + beta x'[t] + omega^2 x[t] == 0,
						x'[0] == 0,
						x[0] == 1},
					x[t],t
					];	(* restituisce una sola soluzione, ovvero una regola di sostituzione x[t]->bla, che io sostituisco subito (vedi inizio) *)

grafico[beta_, omega_] := Plot[ sol[beta,omega,t], {t,-5,5}];

gra1 = grafico[1,1];
gra2 = grafico[0.5,1];
gra3 = grafico[2,1]; (* crea problems, ma makes sense *)
gra4 = grafico[3,1];

Show[ gra1, gra2, gra3, gra4]
