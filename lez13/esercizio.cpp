/*
scrivi uno smart-pointer:
	un wrapper attorno ad un puntatore (ovvero una classe che ha come membro privato un puntatore) che:
	1) si occupi anche a deallocare automaticamente in distruzione l'oggetto a cui punta
	2) che possa essere usato come un puntatore usuale (ovvero overloading di "->")
	3) funziona il polimorfismo?
*/


int main(){
	myptr<widget> p(new widget);
	p->Hello();

	myptr<base> p2(new derived);
	p2->virtual_function();
}


