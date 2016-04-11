
#include<iostream>
using namespace std;

struct window {
	long width, height;
	
	//costruttore di default
	window(){
		cout << "Aperta" << endl;
	}

	window(long w, long h){
		width = w;
		height = h;
	}

	/* ALTRO MODO DI SCRIVERLO:
	window(long w, long h): width(w), height(h){	//->lista di inizializzazione, che mima la chiamata del costruttore nel main(usando lo pseudo-ctor)
	}*/															//aka pseudo costruttore

	//distruttore
	~window(){
		cout << "Chiusa" << endl;
	}
};

int main(){
	// window w;
	window *pw = new window;	//devo allora chiuderla manualmente

		cout << "It's me, window!" << endl;

	delete pw;			//chiudo

	window w(300,200);
}
