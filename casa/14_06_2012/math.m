
 (* Gegenbauer *)

(*

Geg[0,lb_,x_] = 1;
Geg[1,lb_,x_] = 2 lb x;

Geg[n_, lb_, x_] := ( 2 (n + lb - 1)/n ) x Geg[n-1,lb,x] - ((n+2 lb-2)/n) Geg[n-2,lb,x];


polinomi := { Geg[2,lb,x], Geg[3,lb,x], Geg[4,lb,x], Geg[5,lb,x], Geg[6,lb,x]};

i = 1;
While[	i < 6,
	Plot3D[ polinomi[[i]], {x,-1,1}, {lb,0,1}];
	i += 1;
];

y[x_] := GegenbauerC[m,m,x];

eqdiff[x_,m_] := y''[x] (1 - x^2) - (2 m + 1) x y'[x] + 3 m^2 y[x] == 0;

verifica := {eqdiff[x,2], eqdiff[x,3], eqdiff[x,4], eqdiff[x,5]};

*)

	(* not working *)
(*

Mate = {{1,1,1},{1,2,4},{9,6,4}};
Id = {{1,0,0}, {0,1,0}, {0,0,1}};
nULL = {{0,0,0},{0,0,0},{0,0,0}};

Mat[lb_] := Mate - lb Id;

autoval := Solve[ Matr[lb]== 0, lb];

*)

 (* provo ad agire come nel 18apr12 *)

Deltami[i_,j_] := If[ i===j, 1, 0]
Sp[i_,j_] := Deltami[i,j+1];
Sm[i_,j_] := Deltami[i,j-1];

Sx[i_,j_] := ( Sp[i,j] + Sm[i,j] )/2;
Sy[i_,j_] := ( Sp[i,j] - Sm[i,j] )/(2 I);

MSx = Table[ Sx[m,n], {m,0,3}, {n,0,3}];
MSy = Table[ Sy[m,n], {m,1,3}, {n,1,3}];
mostraSx = MatrixForm[MSx];
mostraSy = MatrixForm[MSy];


