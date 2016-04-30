(*
QUESTO FOGLIO E' PIENO DI ERRORI, GUARDA prova.m PER QUELLO CHE HA FATTO IL PROF
*)

intervallo = {t,0,10};

f[a_,t_,b_,k_] := y[t] /. NDSolve[ {y'[t] == a (1-y[t]) y[t]+b, y[0]==k}, y[t], intervallo];	(* importante mettere la sostituzione *)

primograf = Plot3D[ f[a,t,0.5,0.5], intervallo, {a,0.5,1.5}]

(* *)


(* Queste sono le nostre follie, NON SI FA
Coppia = Table[{0,0}];
Inseme = Array[Coppia, 1000000];

While[

	i<1000000,
	ics = Random[{-5,5}];
	ipsilon = Random[{0,1}];

	If[ ipsilon < Exp[-ics^2], Coppia[[1]]/. 0->ics; Coppia[[2]] /. 0-> ipsilon; Array[[r]] 
*)





