 (*
    - E: Eccoci. Comunque sta cosa e' geniale.
    - F: It is. Proporrei di mettere tutto tra commenti cosi' me lo copio :p. 
    - E: sicuro di dover mettere le specifiche per x? non la stiamo risolvendo numericamente al momento., per quello serve NDSolve
    - F: Sono un asino. 
    - E: il problema ora e, come escludiamo quelle che divergono? provo a far andare la stringa in math e vedo cosa dice
        edit: ha una soluzione (per quanto orribile).
    - F: Bene, dopo ti racconto cos'e' successo.
    - E: lol, ok :) proviamo a integrare?
    - F: non dobbiamo scartare le soluzioni che divergono?
    - E: yup, but how? abbiamo una sola regola di sostituzione come soluzione, e dipende dalle due costanti C1 e C2, che boh ahahh, hai provato a runnarlo o te lo posto qui?
    - F: Ho runnato. Allora senti facciamo l'integrale di quella roba e no non worka. Con Expand succede qualcosa?
    - E: indendi mettere expand prima di dsolve? proviamo, ma non ho ancora capito cosa faccia esattamente.
    - F: Secondo me dobbiamo mettere la prima costante di integrazione a zero.
    - E: sono tiltato. allora noi adesso vogliamo fare (in teoria) un integrale da -inf a inf della funzione y[x] che risolve l'eq differenziale giusto? se e' così, sto pensando prima di creare una variabile " Soluzione := y[x] /. Risolvo " per recuperare y[x] e usare integrate su quella. 
    - F: yep.
    - E: e così non funziona? edit: ho provato e accetta la definizione di integrale, ma poi non da nulla in output, e usare dopo integrale lo blocca
    - F: si ho notato anche io. 
    - E: sembra che lui si stia muovendo come noi, vediamo poi cosa fa
    - F: Perche' cristo a lui viene Hermite??? Che voglio dire e' giusto ma cazzo. 
    - E: ma anche a noi viene hermite brand, un termine hermite e uno hyper_staminchia.
    - F: A me vengono due termini hyperstaminchia.
    -E:
                                                                   -n  1   2
                                        C[2] Hypergeometric1F1[--, -, x ]
                  C[1] HermiteH[n, x]                          2   2
Out[2]= {{y[x] -> ------------------- + ---------------------------------}}
                           2                            2
                          x /2                         x /2
                         E                            E

    a me questo, con il nostro codice... lol
    - F: ah proprio bruteforce. Il 50% mi da contro, ovviamente.
    - F: a te cosi' sostituisce le variabili ?
    - E: non ho provato, ora provo.     
                edit: non ho provato, ma di sicuro non lo fa. dobbiamo togliere i due punti da prima dell'uguale di soluzione, altrimenti ogni volta che la usiamo ci calcola di nuovo tutto. e forse vanno tolte anche a Risolvo. confermo, va messo anche su risolvo (lui ha messo tutto in une riga quindi no problemo)
                edit2: no, non mi funziona comunque in effetti. strano.
    - F: c'e' qualcosa che non va nel nostro modo.
    - E: si, ma secondo me se prendi e metti tutto su una riga risolvi il problema, perchè la definisci, e ogni volta che la usi di nuovo la crei e forzi i coefficienti. probabilmente ci basterebbe mettere la soluzione forzata in un altra variabile in cui modifichiamo i coeff e via
    - F: I am tilting. ora mi riprendo. La normalizzazione e' l'integrale, se funziona
    - E: ho appena preso il codice da vicini, ora lo metto dentro e fixo il nostro codice
    - F: io definirei Risolvo come funzione, no?
    - E: eh ma noi non vogliamo dargli valori di x, ne di n, quindi boh. ammesso che quella scrittura della doppia sostituzione che ho messo in soluzione funzione, dovrebbe andare bene anche senza no?
    - F: Penso di si' in realta'.
    -E:  boh ma dato che non dovrebbe cambiare nulla lasciamola fuznione e proviamo
    -E: dimmi se ti piace il codice che ho scritto qua sotto
    - F: Io non trovo errori, ma la mia testa sta fondendo su cosa sia funzione di cosa.
    - E: my mind is telling me noooooooo
    - F: BUT MY BODYYYYYYYYY
    - E: direi che ci piace, siamo soddisfatti e al massimo lo verifichiamo poi. ti piace?
    - f: Got it. Inseriamo in mezzo a questo esattamente il suo codice se l'abbiamo tra commenti
    
   - E: io stavo copiando il suo file su un altro file, ma se vuoi lo mettiamo qui in fondo. ora lo faccio
  - F: mi piace di piu', abbiamo confronto diretto
  - E: la fregatura e' che su questa parte finale lui non ha usato il file, e quindi non so come recuperarlo :/
  - F: Beh comunque plottarle almeno singolarmetne non e' un problema
  - E: chiaro, gg
  - E: la cosa che non ho capito qui e' solo per quale motivo la sua normalizzazione e' sulla funzione al quadrato e non  semplicemente sulla funzione, ma magari e' cosi la regole, non ricordo
  - F: La normalizzazione in L quadro e' il modulo della funzione al quadrato 
  - E: che idiota, siamo in Lquadro. ovvio :)
  - F: Comunque il buon ghera sta appena dicendo che il tuo codice per plottare ha molto senso
  - E: yeah, grande ghera! La migliore pantera della giungla
  - F: Hai bisogno di una pausa.
  - E: dipende, vuoi dirmi che io non sono Balu?
  - F: DAFUQ?
  - E: il libro della giungle brand, il libro della giungle. baghera e balu. OK, ho bisogno di una pausa
*)
 
     Risolvo[x_,n_] = Expand[DSolve[ y''[x] + (2n +1 - x^2) * y[x] == 0, y[x], x]];
     
     Soluzione = (y[x] /. Risolvo[x,n]) /. C[1]=1;C[2]=0
     
          
    (*
     Soluzione/. C[2] -> 0;  vogliamo escludere le hypergeometric perche' un plot mostra che divergono a inf 
     Soluzione/. C[1] -> 1;  mentre i polinomi di hermite vanno benissimo 
     *)
      
     normal = Integrate[ Soluzione^2, {x,-Infinity,Infinity}];

    (* norm[n_] := Integrate[ Soluzione[z,n]^2, {z,-Infinity, Infinity} ]; PROF *)
     
     Do[
         (* vorrei salvarle in un vettore, che ne pensi?*)
         autofunzione[n] = Exp[-1/2 x^2] normal
     
     {n,1,5}
     ]
     Plot[{autofunzione[1], autofunzione[2], autofunzione[3], autofunzione[4], autofunzione[5]}, {x,-5,5}]
   
     
     
    (* PROFESSORE
     sol[x_,n_]  = y[x] /. DSolve[ y''[x] + (2 n + 1 - x^2) y[x] == 0, y[x], x] /. {C[2]->0, C[1]->1} ;

norm[n_] := Integrate[ sol[z,n]^2, {z,-Infinity, Infinity} ];

   *)  
