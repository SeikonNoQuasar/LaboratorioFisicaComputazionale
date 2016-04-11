#include<deque> //si legge deck e sta per double-end-queue
#include<iostream>
using namespace std;

int main(){
	deque<int> d = {1,2,3,4,5};
	d.push_front(0);	//per questo tipo di template (a doppia estremità), esiste la funzine pushfront

	cout << d.front() << " " << d.back() << endl;	//queste funzioni esistono anche in vector

	for( auto i : d) cout << i << " ";
	cout << endl;
}
