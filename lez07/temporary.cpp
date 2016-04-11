include<iostream>
using namespace std;

struct verbose {
	verbose(){ cout << "CTOR" << endl;}
	~verbose(){ cout << "DTOR" << endl;}
};

verbose gimme(){		//-> return by value (ovvero sto ritornando direttamente un oggetto, non un valore)
	return verbose();	   //sto bypassando la creazione di un oggetto e richiamando direttamente il costruttore (return value optimization)
}



int main(){

	//gimme();				//temporary
	// verbose & rv = gimme();		//non posso farlo, essendo gimme temporary ovvero non essendo lvalue non costante
	const verbose & rv = gimme();	//questo invece posso farlo, infatti questa sintassi mi permette di estendere la vita del temporary
	cout << " ---- " << endl;						|
										|
}				
