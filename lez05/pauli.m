(* SO CLOSE *)

(*
P[1]={{0,1},{1,0}}

P2={{0,I}, {-I,0}}

P3={{1,0},{0,-1}}

PAULI = {P[1],P[2],P[3]}	(*per provare a usare Signature*)

(*	(2 I) P3 == P1.P2 - P2.P1	*) *)


P[1]={{1,0},{0,-1}}

P[2]={{0,I}, {-I,0}}

P[3]={{0,1},{1,0}}

PAULI := {P[i],P[j],P[k]}

Do[
	M=P[i].P[j] - P[j].P[i];

	if[
		M === (2 I) Signature[PAULI] P[k]
		Break[];
	],

	{i,1,3}; {j,1,3}
]
