#include<iostream>
usign namespace std;

struct complex{
	double re,im;
};

void print(complez z){
	cout << z.re << " + i " << z.im << endl;
}

//////////////////////////////////////////////////

// con la composizione (metto un complex dentro mycomplex), la relazione e' di tipo "has-a"
// con l'ereditarieta' si ha una relazione di tipo "is-a" (ovvero mycomplex si comporta esattamente come fosse un complex)

struct mycomplex : public complex {	//public sta per "eredita la parte pubblica di "
	double get_r2(){
		return (re*re - im*im);
	}
}:

int main(){
	mycomplex mc;
	print(mc);
}
