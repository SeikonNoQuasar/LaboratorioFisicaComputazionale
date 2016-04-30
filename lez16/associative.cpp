//PROBLEMI CON IL MAKEFILE, MA TUTTO CORRETTO

#include <set>
#include <iostream>
using namespace std;

struct widget{
	int a;
	widget(int aa) : a(aa) {};
};

struct wideget{
	int a;
	wideget(int aa) : a(aa) {};
	bool operator< (const wideget & w) const { return a < w.a;}
	//Nota: relazione per un set
	// deve essere uno "strict weak ordering"
};

int main()
{


	set<int> s;
	s.insert(99);	//basta dare l'oggetto da inserire
	s.insert(3);
	s.insert(5);
	s.insert(4);
	s.insert(5); 	//non verra' salvato nel container perche' gia' presente nel vector

	//per fare lookup (restituisce un iteratore all'oggetto, oppure end se non lo trova)
	auto it = s.find(6);
	if(it==s.end()) cout << "YEAH" << endl;
	
	for(auto el : s)	//i set hanno i loro iteratori che sfrutto qui
	{
		cout << el << endl;
	}

	//alternativa:
	// for( auto it = s.begin(); it!=s.end(); ++it) {...}

/*
	set<widget> r;
	r.insert(widget(3));	//non posso farlo, a meno dell'overloading che c'e` in wideget infatti mi da errore in compilazione. manca 
*/

	set<wideget> t;
	t.insert(wideget(3));

}

