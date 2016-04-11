void funz(int & ri){
	++ri;
}

int main(){
	int i = 5;
	funz(i);
	return i;
}
