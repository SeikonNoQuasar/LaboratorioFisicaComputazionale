#include<vector>
#include<iostream>
using namespace std;

int main(){
	//i boundary di un vettore con N oggetti sono 0 e N-1

	/*std::*/vector<int> v = {1,2,3,4,5,6,7};

	//cout << v[1] << " " << v[6] << endl;	//è stato fatto l'overloading di [] per vector
	//cout << v.at(1) << endl;

	v.push_back(3);		//aggiunge un elemento in coda, in particolare aggiunge 3
	for(auto el : v) cout << el << endl;		//el automaticamente funge da indice nell'ambiente v e lo 
							//percorre
	//for(auto el : v) el = 6; //NON FUNZIONA perchè agisce sulla copia di v
	//for(auto el : v) cout << el << endl;

	//for(auto & el : v) el = 6; //Questo invece funziona, e riempie il mio v con solo 6
	//for(auto el : v) cout << el << endl;

	//cout << v.size() << " " << v.capacity() << endl;	//due funzioni diverse per capire la taglia. 
								//size mi dice che ci ho messo dentro tot elementi
								//capacity invece mi dice quanti posso metterne prima 
								//che cambi la zona di memoria in cui sto mettendo v
								//(in pratica allargare vector lo allarga di un tot, e 
								//non ogni volta di un singolo posto)

	int a = 55;
	v.push_back(a);
	v[7] = 11;
	cout << a << endl;	// a NON viene modificato, infatti in container della STL implementano la semantica di 
				//valore
}
