class veicolo{
private:
	int nruote_;
protected:			//privato per tutti tranne che per chi eredita
	double d;
public:
	veicolo(int i) : nruote_(i) {};
};

struct moto : public veicolo {
	moto() : veicolo(2) {}		//non potrei usare nruote_=2 perche' nruote_ e` privato in veicolo.
}

int main(){

}
