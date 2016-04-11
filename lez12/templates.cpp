templates<typename T>
class mypair{	//voglio un qualcosa che mi permetta di creare coppie, senza a priore dire di cose.
		//parametrizzo un tipo T, nel senso che non esiste un tipo di nome t, ma fa da placeholder
private:
	T x_,y_;
public:
	mypair(T x, T y) : x_(x), y_(y) {};
	T get_x(){ return x_;}
	T get_y(){ return y_;}
};

struct widget{
};

int main(){
	mypair<double> p(3,2);				//sono due tipi diversi

	widget w1,w2;
	mypair<widget> p1(w1,w2);			//
}
