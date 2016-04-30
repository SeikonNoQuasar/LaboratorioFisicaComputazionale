#include"corso.h"

void corso::attiva(bool b){
	status_ = b;
}

bool corso::stato() const{
	return status_;
}
