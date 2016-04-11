
(* regola = mylog[a_,b_] -> mylog[a] + mylog[b] + Which[ ] *)

(* mylog[a_,b_] := mylog[a] + mylog[b] + Which[Arg[a]+Arg[b] > Pi, -2 Pi I, Argo[a]+Argo[b] < -Pi, 2 PI I, True, 0 ]; *)

correzione[a_,b_] = Which[Arg[a]+Arg[b] > Pi, -2 Pi I, Argo[a]+Argo[b] < -Pi, 2 PI I, True, Print["Solo sul primo foglio di Riemman"] 0 ];

mylog[a_,b_] = mylog[a] + mylog[b] + correzione[a,b];


z1 = -2 + 3 I;
z2 = -3 + I;

Print["-----"];
prova = mylog[z1,z2];
Print[prova];
Print["-----"];

z1 = 2 + 3 I;
z2 = 3 + I;

Print["--^^---"];
prova = mylog[z1,z2];
Print[prova];
Print["---^^--"];

(* INSOMMA RIFATTELO EDO PERCHE' E' PIENO DI ERRORI PLZZZZ *)
