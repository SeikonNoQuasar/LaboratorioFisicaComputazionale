// overloadinf operatori
//
//binario non-membro -> due parametri
//binario membro -> un parametro
//unario non/membro -> un parametro
//unario membro -> nessun parametro

//operatore ternario a?b:c -> non si puo` fare overloading

#include<iostream>
using namespace std;

class number{
	int i_;
public:
	// Number() : i_(0){}; //inutile dato che ho aggiunto "int i = 0" nel costruttore qui sotto. che se viene chiamato senza argomento, allora 
					// inizializza a zero
	Number(int i=0):i_(i){};	//valore di default
	int get() const{ return i_;}
	number operator+ (const number & rhs){				//posso definirlo all'interno della classe
		return number(this->i_ + rhs.i_);
	}
	
};

/*
// Operatori che non hanno side-effects (ovvero passa qualcosa e restituisce un valore)
number operator+ (const number & lhs , const number & rhs ){		//posso definirlo all'esterno della classe
	return number(lhs.get() + rhs.g());				//lhs = left hand side, rhs = right hand side
	}
*/

int main(){
	number a(3), b(5);
	a+b;		//il compilatore non conosce questa sintassi, devo allora definirla
			// a + b == operator+(a,b)
	cout << (a+b).get() << endl;		//in entrambi i casi viene usato cosi`
}
