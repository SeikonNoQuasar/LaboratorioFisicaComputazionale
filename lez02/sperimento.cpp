#include<iostream>
using namespace std;

#define N 2

/*
void dynamic(double * a, int &m){
	double * b = new double[m+1];
	for(int i=0; i<m; i++){
		b[i] = a[i];
	}
	delete a;
	a = b;
	m++;
	
}
*/

void parla(double *  a, int m){
	for(int k=0; k<m; k++) cout << a[k] << endl;
}

int main(){

	int n=N, num=6;
	double * array = new double[1, 2, 3, 4, 5, 6];	//errore
	for(int k=0; k<num; k++) cout << array[k] << endl;

	parla( array, num);


	/*

	cout << "quanti numeri?" << endl;
	cin >> num;

	for(int k=0; k<num; k++){
	
		if(k > n){
			dynamic(array, n);
		}

	cout << "Dammi il valore nella posizione [" << k << "]" << endl;
	cin >> array[k];
	};
	//
	cout << "bla" << endl;
	*/
}
