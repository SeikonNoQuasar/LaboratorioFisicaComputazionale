/* 	- creare una strutture huge che contenga un array statico di 10^5 double.
	- due funzioni che ricevono uno huge (uno per valore e uno per referenza) e accedano al millesimo entry dell'array
	- nel many facciamo un cilco che passa 10.000 volte a entrambe le funzioni un oggetto e sfruttando "time" mi mostri quando tempo ci mette a girare 
			(usando time ./huge)
*/

#include<iostream>
using namespace std;

#define HUGE 100000

struct huge{
	int h[HUGE];
	huge(){ for(int i=0; i<HUGE; i++) h[i]=i;}
	~huge(){}
};

int mille_val(huge a){	
	return a.h[1000];
}

int mille_ref(huge & a){
	return a.h[1000];
}

int main(){

	int n=10000;
	huge big;
/*
	for(int j=0; j<n; j++){
		int y = mille_val(big);		//0.43 sec
	};

*/
	for(int j=0; j<n; j++){
		int y = mille_ref(big);		//0,00 sec
	};

}
