/* trova l'ultimo numero primo minore di un miliardo, ma vanno trovati tutti
*/

#include <iostream>

using namespace std;

#define M 100

int main(){

	int ultimo = M, numero, divisore, resto, flag, max;
	for(numero=0; numero < M; numero++){

		flag = 0;
		max = numero;
		
		if(numero > 2){
		
			for(divisore = 2; divisore < max; divisore++){		//riduco ogni volta il valore massimo in cui cercare divisori attraverso l'uso di max in cui metto il valore approssimato del rapporto tra il numero l-ultimo divisore usato (infatti se il numero non e' divisibile per due allora di sicuro il divisore non e' nella seconda meta' dei numeri che lo precedono)
	
				max = numero/divisore;
				resto = numero%divisore;
	
				if(resto == 0){
		
					flag = 1;
					break;
				};
			};
		
		};
	
		if(flag == 0){
			ultimo = numero;
			cout << ultimo << endl;
		};
	};

	cout << "L'ultimo numero primo minore di un milione e': " << ultimo << endl;

} 
