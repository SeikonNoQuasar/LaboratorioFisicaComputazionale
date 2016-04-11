void funz(int * pi){
	++(*pi);	// *pi indica cio' che sta all'indirizzo pi
}

int main(){
	int i = 5;
	funz(&i);
	return i;
}
