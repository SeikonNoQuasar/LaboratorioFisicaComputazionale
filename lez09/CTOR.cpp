#include<iostream>
using namespace std;

struct base {
	int i;
	base() {cout << "BASE" << endl;}
	~base(){cout << "~BAAAASE" << endl;}
};

struct derived : public base {
	double d;
	derived() { cout << "DERIIIIIIVED" << endl;}
	~derived(){ cout << "~DERIVED" << endl;}
};

int main(){

	//costruttori e distruttori vengono eseguiti sia per la base che per la derivata, in modo ANNIDATO
	derived d;

}
