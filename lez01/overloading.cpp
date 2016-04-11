
#include <iostream>

using namespace std;

void tipo(int i){
	cout << "intero" << endl;
}

void tipo(double i){
	cout << "double" << endl;
}

int main(){
	int i = 4;
	double d = 4;

	tipo(i);
	tipo(d);
}

