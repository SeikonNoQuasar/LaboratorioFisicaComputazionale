
H[n_,x_]:= Expand[ Exp[x^2] ( D[ Exp[-(x-t)^2], {t,n}] /. t->0 ];

HH[0,x_] = 1;
HH[1,x_] = 2 x;

HH[n_x_] := Expand[ 2 x HH[n-1,x] - 2 (n-1) HH[n-2,x] ];

ps[i_,j_] := Integrate[ Exp[-x^2] HH[i,x] HH[j,x], {x,-Infinity,Infinity}];
