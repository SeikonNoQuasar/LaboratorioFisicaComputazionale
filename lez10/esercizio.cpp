/*
Definire una strutture "Forma"
Definire due strutture derivate "Cerchio" e "Quadrato"
che contengano una funzione print() (che dica cerchio o quadrato) che sia polimorfica
nel main, istanziare un array di 4 puntatori a forme
l'utente inserisce 4 valori da 0 a 1, se 0 allocare dinamicamente un cerchio e inserirlo nell'array, se 1 un quadrato.
stampa richiamando le funzioni
*/

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

	quadrato(const quadrato &){};	//sembra non essere un problema di copia

	 void print(){ cout << "Quadrato!" << endl;}
};


int main(){

	forma * p[4];	// e capisci dove sbagliamo nella parte dopo. questo e' giusto.
//	forma * p = new forma[4];		//SBAGLIATO, questo e' un array di forme, a noi serve un array di puntatori a forme

	int k;
	for(int i=0; i<4; ++i){
		cout << "Type: " << endl;
		cout << " - 0 : to create a circle" << endl;
		cout << " - 1 : to create a square" << endl;

		cin >> k;
		if(k == 0){
			cerchio * c = new cerchio;

				/*					
					cout << " c ";
					//c->print();
					cout << endl;
				*/
					
			p[i] = c;		// oppure *(p[i])=*(c); ???
					
				/*
					cout << " p ";
					//p[i]->print();
					cout << endl;
				*/				
	
			delete c;			
		}
		else if(k == 1){
			quadrato * q = new quadrato;

				/*					
					cout << " q ";
					//q->print();
					cout << endl;
				*/
					
			*(p[i]) = (*q);
					
				/*
					cout << " p ";
					//p[i]->print();
					delete q;
				*/
					
		}else{
			cout << "Try again: " << endl;
			cout << " - 0 : to create a circle" << endl;
			cout << " - 1 : to create a square" << endl;
			i--;
		}
	}

	cout << "check1" << endl;

	//QUI - SEGMENTATION FAULT

	for(int j=0; j<4; j++)
		p[j]->print();

	cout << "check2" << endl;		

	//delete[] p;

	return 0;

}

