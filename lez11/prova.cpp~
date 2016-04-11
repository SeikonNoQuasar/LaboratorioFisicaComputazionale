#include <cmath>
#include <iostream>
using namespace std;

//class which returns random values

class Random{

public:
	Random(int seed);	//constructor with parameter
	void SetA(int a);
	void SetC(int c);
	void SetM(int m);
	double Rand();		//method to create ONE random number between 0 and 1

private:
	unsigned int _a;
	unsigned int _c;
	unsigned int _m;
	unsigned int _seed;

};


Random::Random(int seed)
{
	_seed = seed;
	_a = 1664525;
	_c = 1013904223;
	_m = pow(2,31);
}

void Random::SetA(int a)
{
	_a = a;
}

void Random::SetC(int c)
{
	_c = c;
}

void Random::SetM(int m)
{
	_m = m;
}

double Random::Rand()
{
	int s = _seed;			//we start with seed
	int n = (_a*s+_c)%_m;
	double d = n/ double(_m-1);		//number between 0 and 1
	
	_seed = n;			//substitution of seed with n0
	
	return d;
}


int main(){

	int a;
	Random c(10);

	for(int i=0; i<10; i++){
		a = c.Rand();
		cout << a << endl;
	}
	return 0;
}
