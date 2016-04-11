
#include<iostream>
using namespace std;

struct cursor {
	long pos_x, pos_y;
	void move(long new_x, long new_y);	//dichiarazione
};	//punto e virgola!!

void cursor::move(long new_x, long new_y){	//cursor:: perche' move non esiste globalmente ma solo nello space di cursor
	(*this).pos_x = new_x;
	this->pos_y = new_y;
	cout << this << endl;
}

int main(){
	
	cursor c;	//creo una variabile di nome c e di tipo cursor
	cursor c2;

	c.move(200, 300);	//move riceve anche un puntatore all'oggetto che ha eseguito la chiamata, che possiamo richiamare con la funzione this
	

	cout << &c << endl;
}
