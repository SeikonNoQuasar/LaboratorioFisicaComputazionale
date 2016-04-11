// overloading operatori con side-effects


#include<iostream>
using namespace std;

class number{
	int i_;
public:
	// Number() : i_(0){}; //inutile dato che ho aggiunto "int i = 0" nel costruttore qui sotto. che se viene chiamato senza argomento, allora 
					// inizializza a zero
	Number(int i=0):i_(i){};	//valore di default
	int get() const{ return i_;}
	
	void operator= 	(const number & rhs){		//DEVE ESSERE MEMBRO! (perche' operatore speciale)
		i_ = rhs.i_;
	}	

};

int main(){
	number a(3), b(5), c;
	cout << c.get() << endl;
	c=a;
	cout << c.get() << endl;
	
}
