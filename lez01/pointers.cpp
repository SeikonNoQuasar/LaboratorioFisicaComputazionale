#include <iostream>
#include <iomanip>
using namespace std;

int file_scope1, file_scope2;	//dichiaro due variabili che avranno validita' (scope) per tutto il mio file (a differenza di quelle interne al main

int main(){

	auto double main_scope1, main_scope2;

	cout << hex << &file_scope1 << endl;	//hex mi permette di stampare in esadecimale, sara' preceduto da un 0x che mi dice che e' esadecimale
	cout << hex << &file_scope2 << endl;
	cout << hex << &main_scope1 << endl;
	cout << hex << &main_scope2 << endl;

	int * pi = &file_scope1;
	double * pd = &main_scope1;
 // c++ e' strongly typed, ovvero c'e' un controllo molto stretto sulla coerenza dei tipi

	cout << "pi: " << pi << endl;
	cout << "pd: " << pd << endl;

}
