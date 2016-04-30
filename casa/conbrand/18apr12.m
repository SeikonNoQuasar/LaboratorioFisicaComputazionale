eq1 = x+y+z == 4;
eq2 = x^2 - y^2 - z == 2;
eq3 = -x + 6 y - z == -2;

sol1 = Solve[{eq1,eq2,eq3},{x,y,z}]

graf1 = Plot3D[ z = 4-x-y, {x,-5,5}, {y,-5,5}];
graf2 = Plot3D[ z = 2 - x^2 + y^2, {x,-5,5}, {y,-5,5}];
graf3 = Plot3D[ z = x - 6 y - 2, {x,-5,5}, {y,-5,5}];

Show[graf1,graf2,graf3];

(*
Spin = 1;

Lz = { {1,0,0},{0,0,0},{0,0,-1}};

autov = Eigenvectors[ Lz ];
*)

deltaedo[i_,j_] := If[ i === j, 1, 0];
Lp[i_,j_] := Sqrt[2] deltaedo[i,j+1];
Lm[i_,j_] := Sqrt[2] deltaedo[i,j-1];

Lx[i_,j_] := ( Lp[i,j] + Lm[i,j] )/2;
Ly[i_,j_] := ( Lp[i,j] - Lm[i,j] )/(2 I);

MLx = Table[ Lx[m,n], {m,0,3}, {n,0,3}];
MLy = Table[ Ly[m,n], {m,1,3}, {n,1,3}];
mostraLx = MatrixForm[MLx];
mostraLy = MatrixForm[MLy];


        




