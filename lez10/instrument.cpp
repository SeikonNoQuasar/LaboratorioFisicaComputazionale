#include<iostream>
using namespace std;

struct instrument {
	instrument(const instrument &){ cout << "instrument::copy" << endl;}
	instrument(){};
	virtual void play(){ cout << "instrument::plau()" << endl;}
};

struct piano : public instrument {			// #AncheIPianiSonoStrumenti
	piano(const piano &){			//in quanto classe derivata, devo per forza mettere un costruttore di default nella classe base
		cout << "piano::copy" << endl;
	}
	piano(){};
	void play() cout << "piano::play()" << endl;}
};

void two_note(instrument & i){
	i.play(); i.play();
}

int main(){
	piano p;
	two_note(p);
}
