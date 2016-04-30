
#include"laurea.h"

double sommastud( const corso & a, const corso & b){
	return a.nstudenti() + b.nstudenti();
}

void laurea::riassunto() {
	for( auto el : corsi_){
		cout << "nome: " << el.nome() << endl;
		cout << "n_studenti: " << el.nstudenti() << endl;
		cout << "Stato: ";
		if(el.stato()) cout << " Active " << endl;
		else cout << " Inactive " << endl;
	};
}

double laurea::nstudenti() {
	return accumulate( corsi_.begin(), corsi_.end(), 0, sommastud);
}

void laurea::set_status_all(bool b){
	for( auto el : corsi_)
		el.attiva(b);
}

void laurea::add(corso * ){
	corsi_.pushback(new corso);
}
