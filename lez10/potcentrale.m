(* 
	variabili: Th = theta e Ph = Phi
	Psi = THETA(cos(th))*PHI(Ph)
*)



eq1 = -1/Sin[Th]  (Cos[Th] D[THETA[Th], Th] PHI[Ph] + Sin[Th] D[THETA[Th], {Th, 2}] PHI[Ph]) + -1/Sin[Th]^2 D[PHI[Ph], {Ph, 2}] THETA[Th] == l(l+1) THETA[Th] PHI[Ph];
eq2 = - D[ THETA[Th] PHI[Ph], {Ph,2} ] == m ^2 THETA[Th] PHI[Ph];

sol2 = DSolve[ eq2, PHI[Ph], Ph];

sol2 = sol2 /. {C[1]->1; C[2]->I};	(* Voglio scrivere le soluzioni in qualcosa della forma exp(ikx) *)

sol22 = D[sol2, {Ph,2}];		(* comoda per la risoluzione della prima espressione usando eq1 /. sol2 e poi eq1 /. sol22 *)

eq1 /. sol2 /. sol22;			(* soluzione per phi e per la derivata seconda di phi *)

(* 
x = Cos[Th];

d/dTh -> dx/dTh d/dx = -Sqrt[1-x^2]d/dx
*)

Derivative[1][f_][Th] := -Sqrt[1-x^2]f'[x]	(* ridefinisco l'effetto di derivata aggiungendo il fattore che dipende dalla sostituzione*)
Derivative[n_][f_][Th] := -Sqrt[1-x^2] D[ Derivative[n-1][f][Th], x];	(* FUCKIN' OVERLOADING *) (* ogni volta che uso f'[Th] applica qst *)

(* Applico la sostituzione *)

eq1 = eq1 /. {Cos[Th]->x, Sin[Th]->Sqrt[1-x^2],
		Csc[Th]->1/Sqrt[1-x^2], Cot[Th]->x/Sqrt[1-x^2],
		THETA[Th] -> THETA[x] };

eq1 = Simplify[ eq1];		(* permette di fare operazioni algebriche per semplificare l'equazione *)

sol1 = DSolve[ eq1, TH[x], x] /. {C[1]->1, C[2]->0};	(* perche' ;e legendre q possono non essere normalizzabili  *)

Psi[l_,m_,x_,phi_] = THETA[x] PHI[Ph] /. sol1 /. sol2; 	(* /. sol22 *)(* in questo caso infatti non serve *) (* uguale (non :=) perche' il valore di x e
							ph sono determinati *)

(* CONTINUAZIONE *)

norm [l_,m_] := Integrate[ Abs[ Psi[l,m,x,Ph]]^2, {x,-1,1}, {Ph,0,2 Pi}];


(* disegna una figura usando parametricplot con r,th,ph con r non costante ma il modulo dell'armonica sferica....*)

armonicgraf[l_,m_] := ParametricPlot3D[ 
	
		 r = Abs[ Psi[l,m,Cos[Th],Ph] ];

	{ r Sin[Th] Cos[Ph], r Sin[Th] Sin[Ph], r Cos[Th]}, 

	{Th,0, Pi}, {Ph,0,2 Pi}
];


(* ERRORE NEL CALCOLO DI THETA *)






(* COPIO QUA SOTTO IL CODICE DEL PROFESSORE *)

(*


eq2 = - D[ TH[th] PHI[phi], {phi,2} ] == m^2 TH[th] PHI[phi];

eq1 = -1/Sin[th] D[ Sin[th] D[ TH[th] PHI[phi], th]   ,th] -
            1/Sin[th]^2 D[ TH[th] PHI[phi], {phi,2} ] ==
            l (l+1) TH[th] PHI[phi];  


sol2 = DSolve[ eq2, PHI[phi], phi ];

sol2 = sol2 /. {C[1]->1, C[2]->I};

sol22 = D[ sol2, {phi, 2} ];

eq1 = eq1 /. sol2 /. sol22;

(*
x = Cos[th]

 d/dth ->   dx/dth d/dx = -Sqrt[1-x^2] d/dx

 *)

Derivative[1][f_][th] :=   -Sqrt[1-x^2] f'[x];
Derivative[n_][f_][th] := -Sqrt[1-x^2]  D[  Derivative[n-1][f][th]  , x];


eq1 = eq1 /. {Cos[th]->x, Sin[th] -> Sqrt[1-x^2], 
                       Csc[th] -> 1/Sqrt[1-x^2], Cot[th]->x/Sqrt[1-x^2],
                       TH[th]->TH[x] };

eq1 = Simplify[ eq1];

sol1 = DSolve[ eq1, TH[x], x] /. {C[1]->1, C[2]->0};


Psi[l_,m_,x_,phi_] = TH[x] PHI[phi] /. sol1 /. sol2 ;


norm[l_,m_] := Integrate[ Abs[ Psi[l,m,x,phi]]^2, {x,-1,1}, {phi,0,2 Pi}];


grafico[l_,m_] := ParametricPlot3D[

                           r=Abs[Psi[l,m,Cos[th],phi]];

                          {r Sin[th] Sin[phi], r Sin[th] Cos[phi], r Cos[th]},

                                                           {th,0,Pi}, {phi,0,2 Pi}
                                                        ];






*)


















