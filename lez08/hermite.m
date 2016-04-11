
herm[x_,n_] := Exp[x^2] D[ Exp[-(x-t)^2], {t,n}]


HH[x_,n_] := herm[x,n] /. t->0 ;

HH[0,x_] := 1;
HH[1,x_] := 2 x;
HH[n_,x_] := 2 x HH[n -1, x] - 2n HH[n-2,x];


Do[
        power = HH[n,x];
        Print[power],
        
        {n,0,20}
  ];

prodottoscalare[n_,m_] := Integrate[ Exp(-x^2) (HH[n,x]) (HH[m,x]), {x,-Infinity, Infinity} ]
   ];
