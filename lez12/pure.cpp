struct instrument{
	virtual void tune() const = 0;	// l'aggiunta dell' =0 è quello che rende la funzione puramente virtuale
	virtual void play() const = 0;
};

void instrument::tune() const {};
void instrument::play() const {};

struct  piano : instrument{
	void tune() const {
	instrument::tune();
};	//ovverriding -> implementazione
	void play() const {};	//se provo a non mettere questa funzione il compilatore mi darà errore (fpure virtual f)
};

int main(){
	//instrument a;		//devo per forza commentare questo o avrò errori in compile-time
	piano p;
}
