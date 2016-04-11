#include<vector>
using namespace std;

//typedef double reale; //ridefinisco il tipo

int main(){

	vector<int> v = {1,2,3,4,5};

	vector<int>::iterator itv;	//devo specificare da dove prendo la definizione dell'iterator, che sta nel 
					//template su cui voglio usarlo
	it = v.begin();		//restituisce un iteratore al primo elemento di v

	//l'iteratore si comporta come un puntatore con qualche funzone in più, ma posso usarlo come un semplice puntat.

	cout << *itv << endl;

	//funzionano anche gli operatori []
	cout << itv[4] << endl;

	//funziona anche l'operatore ->

	list<int> l = {1,2,3,4,5};
	aut itl = l.begin();	//list<int>::iterator
	//cout << itl[4] << endl;	//NON funziona, perchè le liste non permettono il random access
	//funzionano anche operatori:  ->, ++, +
	// itl+4	//NON funziona, no random access
	// for(int i=0; i<e l++i	(brutobruto)
	
	auto itl2 = l.end(); //in realtà begin() si posizione appena prima del primo elemento e legge ciò che c'è dopo
				//(ovvero il primo elemento), mentre end punta appena dopo l'ultimo valore,, ovvero
				// *itl2 mi mostra il primo elemento fuori dal mio vettore
	//cout << *itl2 << endl;	//folle!

	for( auto it = l.begin(); it < l.end(); it++){}
	//questo ciclo in realtà è meno efficiente del ciclo visto ieri "for(auto el : l)"
}
