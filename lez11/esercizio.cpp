/*
	classe resource che contenga un puntatore ad una zona allocata dinamicamente
	e riempita di numeri random (e ricordarsi in distruzione de de-allocare la memoria)
	scrivere: 	- copy constructor (semantica di copia)
			- operatore =
			- una funzione move (semantica di spostamento) [efficiente!]
			- una funzione swap (che scambi due oggetti) [efficiente!]
*/

#include <iostream>
using namespace std;

/*
	uso la vecchia classe random creata nello scorso lab
*/

#include <cmath>

class caso{

public:
	caso(int seed);
	~caso();

	void seta(int a);
	void setc(int c);
	void setm(int m);
	void setseed(int seed);

	double random();

private:
	unsigned int _a;
	unsigned int _c;
	unsigned int _m;
	unsigned int _seed;

};

caso::caso(int seed){
	_a = 1664525;
	_c = 1013904223;
	_m = pow(2, 31);
	_seed = seed;
}

caso::~caso(){
}

void caso::seta(int a){
	_a = a;
}

void caso::setc(int c){
	_c = c;
}

void caso::setm(int m){
	_m = m;
}

void caso::setseed(int seed){
	_seed = seed;
}

double caso::random(){		//crea numeri casuali tra 0 e 1
	int n;
	int prec = _seed;
	//std::cout << prec << std::endl;
	double d;
	n = (_a*prec+_c)%_m;
	//std::cout << n << std::endl;
	d = n/double(_m-1);
	//std::cout << d << std::endl;
	_seed = n;
	return d;
}




/*
Fine della parte pregenerata
*/

//dichiarazioni

class resource {
public:
	int n_;
	double * p_;
	bool is_valid;

//public:		//dovremmo mettere le variabili come private e aggiungere i termini set e get a causa delle funzioni esterne move e swap

	resource(int, int);
	~resource();

	resource(const resource &);
	void operator= (const resource &);
//	void move(resource *);		//implementate come funzioni esterne
//	void swap(resource *);		//implementate come funzioni esterne
	void print() { for(int u=0; u<n_; u++) cout << p_[u] << endl;}

};

void move(resource &, resource &);
void swap(resource &, resource &);

///////////////

//implementazioni

resource::resource(int i, int seed){ 

		n_ = i; 
		caso c(seed);
	
		p_ = new double[n_];

		for(int j=0; j<n_; j++)  p_[j]=c.random();

		is_valid = true;
};

resource::~resource(){

		delete[] p_;
}

resource::resource(const resource & old){	//OK

		n_ = old.n_;
		p_ = new double[n_];	
		for(int j=0; j<n_; j++) p_[j] = old.p_[j];
}

void resource::operator= (const resource & rhs){ 	//OK

		if(this->n_ != rhs.n_) cout << "Non ho potuto operare un'assegnazione tra vettori di dimensione diversa" << endl;
		else{
		for(int j=0; j<n_; j++) this->p_[j] = rhs.p_[j];	//se vuoi fare con n diversi devi esplicitare la possibilita'
		}
	
}

/*
crea una funzione move(a,b), tale per cui dopo la chiamata di move(a,b)
ci si aspetta che il puntatore b.p punti ala zona di memoria di a (AVEVO RAGIONE!!!!!)
RICORDA: a rimane dangling, inoltre a deve perdere la ownership alla zona di memoria! (per esempio usando una variabile booleana "is_valid" e per ogni operazione aggiungere un controllo)

*/
void move(resource & a, resource & b){

	if(a.n_ != b.n_) cout << "Non ho potuto operare uno spostamento in un vettore di dimensione diversa" << endl;

	delete[] a.p_;
	a.p_ = b.p_;
	b.is_valid = false;
}

/*
USA UN TERZO PUNTATORE
*/


void swap(resource & a, resource & b){

	resource tempo(a);
	//delete[] tempo.p_;
	tempo.p_ = a.p_;
	a.p_ = b.p_;
	b.p_ = tempo.p_;
	
}
		
/*
void swap(resource & a, resource & b, resource & c){			//esperimento: lo scambio funziona, ma il programma viene comunque abortito

	c.p_ = a.p_;
	a.p_ = b.p_;
	b.p_ = c.p_;
	
}		
*/

int main(){

/*
		resource c(5,3), d(5,10);

		cout << "Esistono: " << endl;
		cout << endl;

		cout << " c " << endl;
		c.print();
		cout << endl;
		cout << " d " << endl;
		d.print();
		cout << endl;
	
		d = c;
	
		cout << " Posso uguagliarli " << endl;
		cout << endl;

		cout << "d = c" << endl;
		d.print();
		cout << endl;		

		resource a(3,6), b(3,18);

		cout << "Esistono: " << endl;
		cout << endl;

		cout << " a " << endl;
		a.print();
		cout << endl;
		cout << " b " << endl;
		b.print();
		cout << endl;

		cout << "Posso spostare b in a" << endl;
		cout << endl;

		move(a,b);
		
		cout << " a " << endl;
		a.print();
		cout << endl;
*/
		resource r(3,6), bs(3,18);
		//resource r(3,6), bs(3,18), bss(3,2);
		
		cout << "Esistono: " << endl;
		cout << endl;

		cout << " r " << endl;
		r.print();
		cout << endl;
		cout << " bs " << endl;
		bs.print();
		cout << endl;

		cout << "Posso scambiare r e bs" << endl;
		cout << endl;

		swap(r, bs);
		//swap(r,bs,bss);
		
		cout << " r " << endl;
		r.print();
		cout << endl;
		cout << " bs " << endl;
		bs.print();
		cout << endl;
		
		

	return 0;
}

		




















