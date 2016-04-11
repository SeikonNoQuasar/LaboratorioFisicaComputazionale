
Pol[n_,x_] := Expand[ 1/n ( (2 (n-1) +1) x Pol[n-1,x]  - (n-1) Pol[n-2,x])];

Pol[0,x_] = 1;
Pol[1,x_] = x;

orto[i_,j_] := Integrate[ Pol[i,x] Pol[j,x], {x,-1,1}];

check = MatrixForm[Table[ orto[i,j] =!= 0, {i,1,5}, {j,1,5}]]
