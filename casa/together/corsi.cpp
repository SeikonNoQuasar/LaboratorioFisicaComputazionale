
class polli : public corso{
public:
	polli(double stud){ n_stud = stud; nome = "POLLOLOGIA";}

	double nstudenti() const;
	const char* nome() const;
	
private:
	char* nome;
};	

double polli::nstudenti(){
	return n_stud;
}

const char* polli::nome() const {
	return nome;
}



class friggi : public corso{
public:
	friggi(double stud){ n_stud = stud; nome = "FRIGGITRICI 101";}

	double nstudenti() const;
	const char* nome() const;
	
private:
	char* nome;
};	

double friggi::nstudenti(){
	return n_stud;
}

const char* friggi::nome() const {
	return nome;
}




class gioca : public corso{
public:
	gioca(double stud){ n_stud = stud; nome = "GAME-OLOGY";}

	double nstudenti() const;
	const char* nome() const;
	
private:
	char* nome;
};	

double gioca::nstudenti(){
	return n_stud;
}

const char* gioca::nome() const {
	return nome;
}
