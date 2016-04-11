/*
Costruisci un template della classe mypair in cui x e y possano essere di due tipi diversi, ma il comportamento (in default) sia quello di avere i due 
tipi uguali.
*/

#include<iostream>
using namespace std;

template<typename tx = double, typename ty = tx>	//almeno nel caso in cui li volessi definire uguali posso farlo esplicitandone solo uno
class mypair{
private:
	tx x_;
	ty y_;
public:
	mypair(tx x, ty y) { x_ = x; y_ = y;}
	~mypair(){};

	tx get_x() {return x_;}
	ty get_y();
	//ty get_y() {return y_;}
};

template<typename tx, typename ty>
ty mypair<tx,ty>::get_y() {return y_;}
	

int main(){
	mypair<double> p(3.1,2.2);	//per verificare che funzioni anche in questo caso
	mypair<double,int> a(3.3,4);

	cout << p.get_x() << " and " << p.get_y() << endl;
	cout << a.get_x() << " and " << a.get_y() << endl;

}




























