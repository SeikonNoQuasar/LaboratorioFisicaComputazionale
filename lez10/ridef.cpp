#include <iostream>
using namespace std;

struct base{
	int i;
	base() : i(1){};
	void hello() { cout << "It's me! Base!" << endl;}
};

struct derived : public base {
	int i; //ridefinizione!
	derived() : i(2){};
	void hello() { cout << "It's me! Derived!" << endl;}
};		//anche usare una funzione hello(int) creerebbe problemi, infatti in questo caso l'overloading non funziona

int main(){
	base b;
	derived d;
	cout << b.i << " " << d.i << endl;
	b.hello();
	d.hello();
	cout << " " << d.base::i << endl;		 // E EDO C'E`!! IL CIELO E` AZZURRO SOPRA IL LAB!!
	d.base::hello();
}
