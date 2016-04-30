
#include <algorithm>
#include <vector>
#include <list>
#include <iostream>
using namespace std;

int main()
{
	vector<int> v = {1,2,3,34,4,5,56,6,76};
	list<int> l = {1,2,3,6,3,4,8,4,7};
	//esiste un algoritmo per ordinare la sequenza: std::sort

	sort(v.begin(),v.end()); //mangia due iteratori che dicono l'intervallo in cui ordinare
	//sort(l.begin(),l.end()); //NON SI FA COSI'. CATTIVO. LISTA NON HA RANDOM ACCESS. CAPS ON
	l.sort();

	auto it = remove(v.begin(), v.end(), 2); //remove parti da begin finisci a end e rimuovi tutti i 2. Cio' che c'e' dopo l'ultimo valore di due rimosso c'e' THRESH. Remove mi rida' un iteratore al primo oggetto della spazzatura.
	v.erase(it, v.end()); //questo algoritmo cancella tutti gli elementi compresi tra i due iteratori
	//erase chiama i distruttori

	for (auto el : v) { cout << el << endl;}
}
