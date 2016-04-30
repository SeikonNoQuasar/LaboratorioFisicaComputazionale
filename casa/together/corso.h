
class corso{
public:
	corso(){ status_ = true;}
	virtual bool stato() const;
	virtual void attiva(bool b);

	virtual double nstudenti() const =0;
	virtual const char* nome() const =0;
protected:
	bool status_;
	double n_stud;
};
