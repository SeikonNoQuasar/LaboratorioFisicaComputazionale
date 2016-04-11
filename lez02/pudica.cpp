struct pudica {
private:
	int i_;

public:
	int i;
};

int main(){

	pudica p;
	
	p.i_;	//usare questo termine mi segnala errore in compilazione, perche' i_ e' privato
	p.i;	//posso usarlo a volonta' in quanto pubblico
}
