(*
mydet[{{a_,b_},{c_,d_}}] = a d - b c;

mydet[ matrice_] := Module[ {temp},		(* molto comodo il module perche' mi permette di creare variabili interne che esistono solo
						all'interno dello scope del module *)
		risultato = calcoli;

		Return[risultato]

		];
*)
(*
espressione[[j]] -> restituisce il j-esimo elemento di espressione (per esempio la riga di una matrice)
delete[espressione, j] -> restituisce l'espressione con il j-esimo elemento cancellato
*)


(* ################## ESERCIZIO ############################## *)

mydet[ matrice_] := Module[ {primaria, lughezza, senzalaprima, trasposta, minori, detminori, risultato},

(*
servirebbero dei controlli perlomeno sul fatto che la matrice sia quadrata
	*)

	primariga = matrice[[1]];
	lunghezza = Lenght[ primariga];
	senzalaprima = Delete[ matrice, 1];
	trasposta = Transpose[ senzalaprima];
	minori = Table[ Delete[trasposta,j],{j,1,lunghezza}];
	detminori = Table[mydet[minori[[j]] ], {j,1,lunghezza}];

	risultato = Sum[primariga[[j]] * (-1)^(j+1) detminori[[j]], {j,1,lunghezza}];

	Return[ risultato]

M3 = Table[ a[i,j], {i,1,3}, {j,1,3} ];
M4 = Table[ a[i,j], {i,1,4}, {j,1,4} ];

mydet[M4]

(*############################################################ *)
