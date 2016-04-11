/* processi che possono essere "running", "stopped" o "idle"
	usa "enum status"
	la classe process deve contenere una variabile privata status di cui abbiamo get e set (che abbia un cout in caso di variazione di stato)
	funzione bool same_status che mi permette di confrontare due processi e valutare se essi hanno lo stesso stato (secondo processo come parametro)
*/
#include<iostream>

enum status {running, stopped, idle};

class process {
private:
	status st_;
public:
	int get_status(){return st_;}
	void set_status(status st) { if(st_ != st) std::cout << "lo stato e' cambiato da " << st_ << " a " << st << std::endl; st_ = st;}
	bool same_status(process other){ return get_status() == other.get_status();}	//funzionava anche senza scrivere return
};				//NOTA: nella bool avrei potuto usare other.s_ == s_, infatti dato che sto lavorando su due oggetti diversi della stessa
				//classe, allora l'uno ha accesso ai membri private dell'altro. il concetto di privato si applica solo tra elementi di
				//classi diverse
	

int main() {

	process edo,brand;

	edo.set_status(idle);
	brand.set_status(stopped);

	edo.set_status(stopped);


	if( brand.same_status(edo) == true ) std::cout << "WTF!" << std::endl;
	//std::cout << brand.same_status(edo) << std::endl;

	return 0;
}
