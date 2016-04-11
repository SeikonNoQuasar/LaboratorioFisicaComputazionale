
#include <iostream>
using namespace std;

void func(int){}

int piu(int a, int b = 0){	return a+b; }	//b=0 mi dice che se io non passo alla funzione un secondo parametro, allora considero b come = 0. puo' 						//essere usato su entrambi, ma in generale se lo uso sul primo parametro devo usarlo su tutti i 						//successivi 

int main(){

	cout << reinterpret_cast<long>(func) << endl;

	void (*pf)(int);		// attenzione void *pf(int) dice che ho una funzione di nome pf che vuole un intero e ritorna un puntatore a un 					// void (ovvero un puntatore generico, che per essere usato richiedera un cast ad un altro tipo di puntatore

	pf = func;			// oppure pf = &func;
	pf(5);


	///
	double d = static_cast<double>(7)/3;
	cout << d << endl;
	///

	///
	cout << "default" << endl;
	cout << piu(1,3) << " " << piu(2) << endl;
	///

}

/*ESERCIZIO: qual'e' il tipo di queste definizioni?
	void funz(int (*pf)(double,double));
	int (*funz2 (char c))(double,double);
	*/


