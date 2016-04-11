   #include <iostream>
   #include <fstream> 
   #include <cmath>
    using namespace std;
    
    class complex{
    private:
        double x_; //parte reale
        double y_; //parte immaginaria
    public:  
          complex();
          complex(double r, double i)
    {
        x_ = r;
        y_ = i;
    }
        ~complex()
        
        void set_cart( double a, double b );
        void set_re( double a ) { x_ = a; }
        double get_re () { return x_; }
        
        void set_im( double a ) { y_ = a; }
        double get_im () { return y_; }
        
        void set_pol( double r, double phi);
        
        double get_r() { return sqrt(x_*x_+y_*y_);}
        double get_phi() { return atan(y_/x_);}
        
        complex sum(complex , complex);
        complex sum(complex  z1, double d);
	complex prodotto(complex, complex);
	complex prodotto(complex, double );
        complex inverso(complex );
 
            
    };
    
    void complex::set_pol( double r, double phi) //set in polari
    {
        x_ = r * cos(phi);
        y_ = r * sin(phi);
    }
     
    void complex::set_cart( double a, double b ) //set in cartesiane
    { 
        x_ = a; 
        y_ = b;
    }
       
    complex complex::sum(complex  z1, complex  z2) //somma
    {
        complex r;
        r.set_re( z1.get_re() + z2.get_re());
        r.set_im( z1.get_im() + z2.get_im());
        
        return r;
    }   
    
    complex complex::sum(complex  z1, double d) //somma
    {
        complex r;
        r.set_re( z1.get_re() + d);
        r.set_im( z1.get_im());
        
        return r;
    }   
    
            
    
    complex complex::prodotto(complex x, complex y){
        complex z;
        
        z.set_re( x.get_re()*y.get_re() - x.get_im()*y.get_im());
        z.set_im( x.get_re()*y.get_im() + x.get_im()*y.get_re());
        
        return z;
    }

    complex complex::prodotto(complex x, double d){
	complex r;

	r.set_re( x.get_re()*d);
	r.set_im( x.get_im()*d);

	return r;
    }        
        complex inverso(complex z)
    {
        complex r;
        r.set_re( z.get_re() / z.get_r());
        r.set_im( - z.get_im() / z.get_r());
        
        return r;    
    }
        
    int main()
   {
       //a dopo header etc...
       
       ofstream out;
       out.open("quadrato.dat");
       
       complex p[100]; //prendiamo 100 punti guarda se ti convince come li metto
       for(int i = 0; i < 10; i++)
       {
           for(int k = 0; k < 10; k++)
            {
                
               

                p[i * 10 + k].set_re = 2 - i*0.4;
                p[i * 10 + k].set_im = 2 - k*0.4; 
                
                out << get_re(p[i * 10 + k]) << " " << get_im(p[i * 10 + k]) << endl;
            }
        }
        
        out.close();
        
        complex fp[100]; 
        
        out.open("fquadrato.dat");
        
        for(int i = 0; i < 100; i++)
        {
              fp[i] = prodotto(p[i], inverso( prodotto( sum(p[i], -3.), sum(p[i], -3.) )));
              out << get_re(fp[i]) << " " << get_im(fp[i]) << endl;      
        
        }  
        
        out.close();
        out.open("cerchio.dat");
        
        complex circ[91]
    
        for(int r=1; r<10; r++)
        
            for(int p=0; p<10; p++){
            
                circ[(r-1) * 10 + p].set_pol( 0.2 * r, PI/5 * p);
                out << get_re(circ[(r-1) * 10 + p]) << " " << get_im(circ[(r-1) * 10 + p]) << endl;
                
            }
            
         out.close();
         out.open("fcerchio.dat")   
            
         circ[90].set_pol(0,0);
         
         complex fcirc[91];
         for(int i=0; i<91; i++){
              fcirc[i] = inverso( somma( prodotto(circ[i], 2), -3) );
		 out << get_re(fcirc[i]) << " " << get_im(fcirc[i]) << endl; 
              
         }      
             
	out.close();

	return 0;
}             
