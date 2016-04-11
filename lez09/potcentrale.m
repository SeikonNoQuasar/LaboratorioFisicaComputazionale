(* 
	variabili: Th = theta e Ph = Phi
	Psi = THETA(cos(th))*PHI(Ph)
*)



eq1 = -1/Sin[Th]  (Cos[Th] D[THETA[Th], Th] PHI[Ph] + Sin[Th] D[THETA[Th], {Th, 2}] PHI[Ph]) + -1/Sin[Th]^2 D[PHI[Ph], {Ph, 2}] THETA[Th] == l(l+1) THETA[Th] PHI[Ph];
eq2 = - D[ THETA[Th] PHI[Ph], {Ph,2} ] == m ^2 THETA[Th] PHI[Ph];

sol2 = DSolve[ eq2, PHI[Ph], Ph];

sol2 = sol2 /. {C[1]->1; C[2]->I};	(* Voglio scrivere le soluzioni in qualcosa della forma exp(ikx) *)

sol22 = D[sol2, {Ph,2}];		(* comoda per la risoluzione della prima espressione usando eq1 /. sol2 e poi eq1 /. sol22 *)

eq1 /. sol2 /. sol22;

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

eq1 = Simplify[ eq1];

sol1 = DSolve[ eq1, TH[x], x] /. {C[1]->1, C[2]->0};

Psi[l_,m_,x_,phi_] = THETA[x] PHI[Ph] /. sol1 /. sol2 /. sol22

(* ESERCIZIO CONCLUSO NELLA PROSSIMA LEZIONE *)
