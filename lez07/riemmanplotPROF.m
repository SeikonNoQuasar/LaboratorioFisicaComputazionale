
(*
z = r Exp[ phi]
z^2 = r^2 Exp[ 2 phi]
*)

(*
riemann = ParametricPlot3D[

		x1= r Cos[phi];
		x2= r Sin[phi];
		x3= r^2 Exp[ 2 phi];
		{x1,x2,x3},
		{r,0,1}, {phi,0,2 Pi}
		];
*)

riemann = ParametricPlot3D[

		x1= r Cos[2 phi];
		x2= r Sin[2 phi];
		x3= r Cos[phi];
		{x1,x2,x3},
		{r,0,1}, {phi,0,2 Pi}
		];
