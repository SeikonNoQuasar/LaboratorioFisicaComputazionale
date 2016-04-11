int main(){

	double * pd = new double;	//devo segnalare all'operatore new il tipo della variabile 

	//faccio cose

	delete pd;			// delete libera la zona di memoria e cui punta il puntatore ovvero elimina la mia variabile creata con new

	//qui pd e' un dangling pointer, se uso ora (*pd) rischio il segmentation fault (ovvero stai cercando di accedere a un indirizzo di memoria non
	//allocato per te. segmentation fault e' un runtime error (che e' un errore che si verifica mentre gira il programma, a differenza degli errori
	//che compaiono in compilazione
}
