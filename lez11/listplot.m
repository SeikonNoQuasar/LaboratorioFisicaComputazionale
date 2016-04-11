(* 		FATTO DA ME => SBAGLIATO


	xx[0] = 0.01;
	Th[0,n_] = Pi / 180;
	yy[0] = xx[0] Tan[Th[0,n]];

	Th[i_,n_] := Th[0] + 2 Pi/n I;
	xx[i_,n_] := ( yy[i-1] - xx[i-1] Tan[ Th[i-1,n] + Pi/2] )/( Tan[Th[i,n]] - Tan[ Th[i-1,n] + Pi/2] );
	yy[i_,n_] := xx[i] Tan[ Th[i,n]];
	
	
	

	g[n_] = Table[ {xx[i,n], yy[i,n]}, {i,1,n}];

	prova = g[2];
*)

(* PROFESSORE *)

 x[0] = 0.001;
  th[0] = Pi/180;
  y[0] = x[0] Tan[th[0]];

  
  g[n_] := Table[

  th[i] = th[0] + 2 Pi/n i;
  x[i] = (y[i-1]  - x[i-1] Tan[th[i-1]+Pi/2]) /
               (Tan[th[i]] - Tan[th[i-1]+Pi/2]  );
  y[i] = x[i] Tan[th[i]];

		  {x[i],y[i]},

                          {i,1,n}
		       ];
  spezzata[n_] := ListPlot[g[n]];
