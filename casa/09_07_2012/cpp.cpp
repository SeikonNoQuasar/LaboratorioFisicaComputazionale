
//non funziona :/


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
	scatola(){}
	void aggiungi(solido);
	double volume_totale();
	double superficie_totale();
private:
	vector<solido> s_;
};

void scatola::aggiungi(solido forma){
	s_.push_back(forma);
};

double scatola::volume_totale(){
	double tot=0;
	for( auto el : s_){
		tot =+ el.volume();
	};
	return tot;
}

double scatola::superficie_totale(){
	double tot=0;
	for( auto el : s_){
		tot =+ el.superficie();
	};
	return tot;
}

//************************************************************************

//------------------------- MAIN ----------------------------------------

int main(){
	
	cubo c(2);

	scatola s;

	s.aggiungi(c);

	cout << "Volume tot: " << s.volume_totale() << endl;
	cout << "Superficie tot: " << s.superficie_totale() << endl;
}














