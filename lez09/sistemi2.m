(*	EQUAZIONI:

	x + y - z == -1
	x^2 + y^2 - z == 3
*)

intervallox = {x,-5,5};
intervally = {y,-5,5};

(* Risolvo il sistema *)
soluzione = Solve[ 	x + y - z == -1,
			x^2 + y^2 - z == 3,
		{x,y}
		];

Print[soluzione];

(*Plottogether*)
(* Plot3D[ {x + y + 1, x^2 + y^2 - 3}, {x,-5,5}, {y,-5,5}] *)

(* Plot separati *)
	grafeq1 = Plot3D[ x + y + 1, {x,-5,5}, {y,-5,5}];
	grafeq2 = Plot3D[ x^2 + y^2 - 3, {x,-5,5}, {y,-5,5}];	
	graftot = Show[grafeq1, grafeq2];

curvainsieme = x + y + 1 == x^2 + y^2 - 3;
soluzionesame = Solve[ curvainsieme, y];

(* trovo ora quando le soluzioni sono reali (PROF) *)

discriminante = 17 + 4 x - 4 x^2;
zeri = Solve[ discriminante == 0,x];

xmin = x /. zeri[[1]];
xmax = x /. zeri[[2]];

curva = y /.soluzionesame;
graint = Plot[Evaluate[curva],{x,xmin,xmax}]

