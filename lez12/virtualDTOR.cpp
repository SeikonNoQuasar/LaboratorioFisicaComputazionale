#include<iostream>
using namespace std;

struct base{
	base() { cout << "base()" << endl;}
	virtual ~base(){ cout << "~base()" << endl;}
};

//derivata che gestisce una risorsa
struct derived : public base {
	int *pi;
	derived(){
		pi = new int[10];
		cout << "derived()" << endl;
	}
	~derived(){
		delete[] pi;
		cout << "~derived()" << endl;
	}
};

int main(){
	derived d;
	base * pb = new derived;
	delete pb; //phirst blood
}
