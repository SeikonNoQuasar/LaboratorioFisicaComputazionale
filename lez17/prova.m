eqs = { z == x^2 + y^2,
        z == -(x^2+y^2)^(3/2) + 30,
        z == -40 x - 40 y };

sol1 = Solve[ eqs, {x,y,z} ];

(*
gr1 = Plot3D[ x^2+y^2, {x, -3,3}, {y, -3,3} ];
gr2 = Plot3D[ -(x^2+y^2)^(3/2) + 30, {x, -3,3}, {y, -3,3} ];
gr3 = Plot3D[ -40 x - 40 y, {x, -3,3}, {y, -3,3} ];

grtot = Show[ gr1, gr2, gr3];
*)
(*
grtot = Plot3D[ {x^2+y^2, -(x^2+y^2)^(3/2) + 30, -40 x - 40 y}, 
               {x, -3,3}, {y, -3,3} 
              ];
*)

(*************************)


sol2[a_,b_,k_,t_] = y[t] /. DSolve[   { y'[t] == a (1-y[t]) y[t] + b,  
                                        y[0] == k },
                                   y[t], t
                                  ];


sol3[a_,b_,k_] := y[t] /. NDSolve[   { y'[t] == a (1-y[t]) y[t] + b,  
                                        y[0] == k },
                                   y[t], {t,0,10}
                                  ][[1]];



(*
gra1 = Plot3D[  Evaluate[ sol3[a,0.5,0.5]] /. t->z ,
		 {z,0,10}, {a,0.5, 1.5}
	     ];
*)

(*************************)
(*
contatore=0;
puntitotali=100000;
punti = Table[
               xi=Random[Real, {-5,5}];
               yi=Random[];
	       If[ yi < Exp[-xi^2],
		   coppia = {xi,yi};
                   contatore +=1 ,
		   coppia = {0,0}
		 ];
               coppia,
               {n,1,puntitotali}
	      ];

graficoexp = ListPlot[ punti, PlotRange->{{-10,10}, {-10,10}}];


npunti = Length[ Union[ punti] ] -1;

rapporto = npunti/puntitotali;

rapportoesatto = Integrate[ Exp[-x^2], {x,-5,5} ]/ 10;

*)


(********************************)
(*
ranmat = Table[ Random[], {i,1,1000}, {j,1,1000} ];

raneig = Eigenvalues[ ranmat];

reimeig = Table[ z=raneig[[i]];  {Re[z], Im[z]}, {i,1,1000} ];

grareimeig = ListPlot[ reimeig, PlotRange-> {-10,10} ]


*)

(*************************************)

xx[0] = 0;
yy[0] = 0.5;

h = 0.01;
f[x_,y_] = 0.5 (1-y) y + 0.5;

rk = Table[
           xn = (i-1) h;
           k1 = h f[xn, yy[i-1]];
           k2 = h f[xn+h/2, yy[i-1] + k1/2];
           k3 = h f[xn+h/2, yy[i-1] + k2/2];
           k4 = h f[xn+h  , yy[i-1] + k3  ];
           yy[i] = yy[i-1] + k1/6 + k2/3 + k3/3 + k4/6;

           {i h, yy[i]},

           {i,1,1000}
          ];

grark = ListPlot[ rk ];







