/copy-constructor

#include<iostream>
using namespace std;

struct verbose {
	verbose() {cout << "CTOR" << endl;
	~verbose(){cout << "DTOR" << endl;
	explicit verbose(verbose &) {cout << "COPY" << endl;}	//e' necessario mettere un riferimento allo stesso tipo come argomento per distinguerlo dal CTOR
};

void by_value(verbose){}
void by_ref(verbose &){}

int main(){

	verbose v;
	by_value(v); //copia implicita
	by_ref(v)

	cout << " ---- " << endl;

	verbose v1(v); //chiamata esplicita al copy constructor
	verboce v2 = v1;	//non viene chiamato l'operatore "=" ma viene fatta una chiamata implicita al copy contructor, perche` dico:	
}				//costruisci un oggetto di tipo verbose a partire da uno stampo del tipo v1.
