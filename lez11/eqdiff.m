
sol[b_, th_, a_] =r[th] /. DSolve[ 
				{r'[th] == b r[th],
					r[0] == a},
				r[th],th][[1]]; (*WTF??*)
				

grafico[a_,b_] := ParametricPlot[ {sol[b,th,a] Cos[th], sol[b,th,a] Sin[th]}, {th,0,8 Pi}];

gr1 = grafico[0.1,0.1];
gr2 = grafico[0.01,0.01];

manipolo = Manipulate[ParametricPlot[{sol[b,th,a] Cos[th], sol[b,th,a] Sin[th]}, {th,0,8 Pi}], {a,0.01,0.1},{b,0.01,0.1}]; (* DA IMPARARE A USARE *)
