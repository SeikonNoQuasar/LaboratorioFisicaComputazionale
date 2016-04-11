(*
 carica generica    {x,y,q}
 *)



potenziale[x_,y_, ch_] := Sum[

			      ch[[i,3]]/Sqrt[(x-ch[[i,1]])^2 + (y-ch[[i,2]])^2 ],
				   
				   {i,1,Length[ch]}
			      ];
 

cariche = { {1,1,1}, {-3,-3,1} };

grapot = ContourPlot[ potenziale[x,y,cariche], {x,-5,5}, {y,-5,5} ];


campoelettrico[x_,y_,ch_] := {
          -D[ potenziale[xx,yy,ch], xx],
          -D[ potenziale[xx,yy,ch], yy]  
                                               } /. {xx->x, yy->y};




disegnacampo[xmin_, xmax_, ymin_, ymax_, ch_] :=
  Show[
       Graphics[
		Table[
		      dx = (xmax-xmin)/15;
		      dy = (ymax-ymin)/15;
		      xi = xmin + dx/2 + (i-1) dx;
		      yj = ymin + dy/2 + (j-1) dy;

		      vettore = campoelettrico[ xi, yj, ch];
		      norma = Sqrt[ vettore.vettore];
		      freccia = Arrow[{  {xi,yj},  {xi,yj}+vettore/norma  }]; 

		      freccia,
		      
                          {i,1,15}, {j,1,15}
		         ]
                     ]
       ];





disegnacampo[ -5,5,-5,5,cariche]


(*	CONICHE

sol = Solve[ { z == 1/2 + lambda x,
 	               z^2 == x^2 + y^2 },
                  {y,z}
                  ];

coniche[x_,lambda_] = y /. sol;


gra1 = Plot[ coniche[x,0], {x,-3,3}];
gra2 = Plot[ coniche[x,0.5], {x,-3,3}];
gra3 = Plot[ coniche[x,1], {x,-3,3}];
gra4 = Plot[ coniche[x,2], {x,-3,3}];

gracon = Show[ gra1, gra2, gra3, gra4];

Manipulate[ Plot[ coniche[x,lambda], {x,-3,3}], {lambda,0,2}];

*)
  





 
