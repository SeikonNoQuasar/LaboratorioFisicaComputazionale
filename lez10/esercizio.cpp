/*
Definire una strutture "Forma"
Definire due strutture derivate "Cerchio" e "Quadrato"
che contengano una funzione print() (che dica cerchio o quadrato) che sia polimorfica
nel main, istanziare un array di 4 puntatori a forme
l'utente inserisce 4 valori da 0 a 1, se 0 allocare dinamicamente un cerchio e inserirlo nell'array, se 1 un quadrato.
stampa richiamando le funzioni
*/

/* #############################################################

FUNZIONANTE!

############################################################## */

#include<iostream>
using namespace std;


class forma{
public:
	forma(){};
	~forma(){};

	forma(const forma&){};

	virtual void print() { cout << "unknown" << endl;}
};

class cerchio : public forma{
public:
	cerchio(){};
	~cerchio(){};

	cerchio(const cerchio &){};

	void print(){ cout << "Cerchio!" << endl;}
};

class quadrato : public forma{
public:
	quadrato(){};
	~quadrato(){};

	quadrato(const quadrato &){};

	void print(){ cout << "Quadrato!" << endl;}
};


int main(){

	forma * p[4];	// array di puntatore a forme

	int k;
	for(int i=0; i<4; ++i){
		cout << "Type: " << endl;
		cout << " - 0 : to create a circle" << endl;
		cout << " - 1 : to create a square" << endl;

		cin >> k;
		if(k == 0){
			
			p[i] = new cerchio;		
					
		}
		else if(k == 1){
			
			p[i] = new quadrato;		
				
					
		}else{
			cout << endl;
			cout << "Try again: " << endl;
			i--;
		}
	}

	for(int j=0; j<4; j++){
		p[j]->print();
	}

	//delete[] p;		//Non va messo?

	return 0;

}

