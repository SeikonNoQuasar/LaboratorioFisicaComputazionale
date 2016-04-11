sol[x_,n_]  = y[x] /. DSolve[ y''[x] + (2 n + 1 - x^2) y[x] == 0, y[x], x] /. {C[2]->0, C[1]->1} ;

norm[n_] := Integrate[ sol[z,n]^2, {z,-Infinity, Infinity} ];

