// smart pointers

#include <memory>
#include <iostream>
using namespace std;


struct Resource {
  Resource() { cout << "CTOR" << endl; }
  ~Resource() { cout << "DTOR" << endl; }
};

int main() {
  Resource * pr = new Resource; // leak

  unique_ptr<Resource> p(new Resource); 
  // RAII: resource allocation is initialization
  // Lo smart pointer si occupa di chiamare delete in uscita di scope
 
  // Più permissivo: shared_ptr
  // (fa "reference counting")
}
