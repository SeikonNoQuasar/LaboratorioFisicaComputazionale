#include<iostream>
using namespace std;

struct person {
	enum color{green, brown, blue};

	color eye;
	
	person(): eye(brown){};

	color get() const {
		//eye = blue;	//vietato per la const-ness		

		return eye;}	//se non metto const dopo get, se creo nel main "const person p" mi crea problemi in compilazione, devo infatti 
					// assicurare che non abbia funzioni che possano modificare la const che definisco
};

int main(){

	const person p;
	p.get();

	//"mutable" attributi che possono variare anche se all'interno di costanti
}
