
// tolgo il vector
// non funziona neppure questo. yayyyyy


#include<vector>
#include<iostream>
using namespace std;



//################################## SOLIDO ###########################

class solido {
public:
	solido(){};
	virtual double volume(){};
	virtual double superficie(){};
};

//#####################################################################

//################################# CUBO ###############################

class cubo : public solido {
public:
	cubo(double lato) { l_ = lato;}
	double volume();
	double superficie();
private:
	double l_;
};

double cubo::volume(){
	return l_*l_*l_;
}

double cubo::superficie(){
	return l_*l_;
}

//########################################################################


//********************************** SCATOLA **************************

class scatola {
public:
	scatola(){ for(int i=0; i<3; ++i) s_[i] = NULL;}
	void aggiungi(solido*);
	double volume_totale();
	double superficie_totale();
private:
	solido * s_[3];
};

void scatola::aggiungi(solido * forma){
	int i=0;
	for(; i<3; ++i)
		if( s_[i] != NULL) break;
	s_[i] = forma;
};

double scatola::volume_totale(){
	double tot=0;
	for(int i=0; i<3; ++i){
		tot += s_[i]->volume();
	}
	return tot;
}

double scatola::superficie_totale(){
	double tot=0;
	for(int i=0; i<3; ++i){
		tot += s_[i]->superficie();
	}
	return tot;
}

//************************************************************************

//------------------------- MAIN ----------------------------------------

int main(){
	cubo c(2);
	cubo * ci = &c;

	cout << " a ";

	scatola s;

	cout << " a ";

	s.aggiungi(ci);

	cout << " a ";
	
	cout << "Volume tot: " << s.volume_totale() << endl;
	cout << "Superficie tot: " << s.superficie_totale() << endl;
}














