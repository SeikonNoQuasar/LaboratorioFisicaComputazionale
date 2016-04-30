
#include<vector>
#include<iostream>
#include"corso.h"

class laurea{
public:
	laurea();	
	void add( corso* );
	double nstudenti();
	void set_status_all( bool b);
	void riassunto();
private:
	vector<corso> corsi_;
};
