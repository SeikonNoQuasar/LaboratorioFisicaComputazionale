/*
scrivi uno smart-pointer:
	un wrapper attorno ad un puntatore (ovvero una classe che ha come membro privato un puntatore) che:
	1) si occupi anche a deallocare automaticamente in distruzione l'oggetto a cui punta
	2) che possa essere usato come un puntatore usuale (ovvero overloading di "->")
	3) funziona il polimorfismo?
*/

#include<iostream>
using namespace std;

template<typename tipo = double>
class wrap{
private:
	tipo * p_;
public:
	wrap(tipo & p){ p_ = p;}
	~wrap(){ /* delete p*/};

	tipo * operator-> ();

	void prova(){ cout << "I DID IT!" << endl;}

};

template<typename tipo>
tipo * wrap::operator-> (){
	
		return this.p_;
}

class widget{
public:
	widget(){}
	~widget(){};

	virtual void hi() { cout << "HI WID!" << endl;}
};

class derived : public widget{
public:
	derived(){};
	~derived(){};

	void hi() { cout << "HELLO DER" << endl;}
};

int main(){
	widget a;
	derived b;

	wrap<widget> p(a);
	p->hi();

	wrap<derived> p2(b);
	p2->hi();
}


