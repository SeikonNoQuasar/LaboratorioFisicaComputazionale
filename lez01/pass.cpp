
void funz(int i){
	i = i+1;
}

int main(){
	int i = 5;
	funz(i);
	return i;
}		//in questo caso il cout ci dira' che i=5, perche' ho usato copie di i per il calcolo nella funzione
