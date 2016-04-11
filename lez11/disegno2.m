

sol1[beta_, omega_, t_] := x[t] /. DSolve[

					{ x''[t] + beta x'[t] + omega^2 x[t] == 0,
						x'[0] == 0,
						x[0] == 1},
					x[t],t
					];	

sol2[omega_, t_] := x[t] /. DSolve[

					{ x''[t] + 2 omega x'[t] + omega^2 x[t] == 0,
						x'[0] == 0,
						x[0] == 1},
					x[t],t
					];

sol[beta_, omega_, t_] := If[ beta === 2 omega,
 			                     sol2[omega,t],
			                     sol1[beta,omega,t]
			                   ];


grafico[beta_, omega_] := Plot[ sol[beta,omega,t], {t,-5,5}];

gra1 = grafico[1,1];
gra2 = grafico[0.5,1];
gra3 = grafico[2,1]; (* Non crea piu' problemi *)
gra4 = grafico[3,1];

graftot = Show[ gra1, gra2, gra3, gra4]

grafico3[beta_,omega_] := Plot[sol3[beta,omega,t], {t,-5,5}]; (* non funziona perche' cerca di disegnare un qualcosa di letterale *)
grafico4[beta_,omega_] := Plot[Evaluate[sol3[beta,omega,t]], {t,-5,5}]; (* evaluate costringe matematica a valutare numericamente l'espressione prima di provare a fare il grafico *)
gra5 = grafico3[0.5,1];
gra6 = grafico4[0.5,1];

