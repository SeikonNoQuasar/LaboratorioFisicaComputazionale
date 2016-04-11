s[1] = { {0,1},{1,0} }
s[2] = { {0, -I},{I,0} }
s[3] = { {1,0},{0,-1} }

commutatore[ x_, y_] := x.y - y.x;

test = Table[ commutatore[ s[i], s[j] ] === 
		Sum[ 2 I Signature[{i,j,k}] s[k], {k,1,3} ],	(* sommo su k *)
		{i,1,3}, {j,1,3}
		];


