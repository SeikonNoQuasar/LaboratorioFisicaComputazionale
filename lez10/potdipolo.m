(* 6 argomenti per le due cariche, +2 per il la posizione xy in cui calcolo il potenziale *)


raggio[x1_,y1_,x2_,y2_] := Sqrt[ (x1-x2)^2 + (y1-y2)^2];

k = 1/(4 Pi 8.85 10^-12);

esempio = {2,1,0,-2,-1,0,0,1};	(* whyNOT *)



potenziale[q1_,x1_,y1_,q2_,x2_,y2_,x_,y_] := k (q1/raggio[x1,y1,x,y] + q2/raggio[x2,y2,x,y]);



campo[q1_,x1_,y1_,q2_,x2_,y2_,x_,y_] := { 
	
	- D[potenziale[q1,x1,y1,q2,x2,y2,xx,yy], xx], 
	- D[potenziale[q1,x1,y1,q2,x2,y2,xx,yy], yy]
} /. {xx->x, yy->y};


(* NOI SIAMO ARRIVATI FINO A QUI *)

(* PROFESSORE 

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
			dx = (xmax - xmin) / 15;
			dy = (ymax - ymin) / 15;
			xi = xmin + dx/2 + (i-1) dx;
			yj = ymin + dy/2 + (j-1) dy;

			vettore = campo[xi,yj,ch];	
			norma = Sqrt[ vettore.vettore];
			freccia = Arrow[{ {xi, yj} , {xi,yj} + vettore/norma }],

			freccia,
			{i,1,15} , {j,1,15}
			]
		]
	]

disegnacampo[ -5,5.1,-5,5.1,cariche]

*)
