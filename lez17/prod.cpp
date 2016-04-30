#include <numeric>  // accumulate sta qui, non in <algorithm>
#include <vector>
#include <iostream>
#include <functional>
using namespace std;


int mult(int a, int b) { return a*b; }

// callable object o functor
struct MultCO {
  int operator() (int a, int b) { return a*b; }
};

int main() {

  MultCO m;
  m(3,4); // syntactic sugar

  vector<int> v = {4,4,7,6,2};
  //cout << accumulate(v.begin(), v.end(), 1, MultCO() ) << endl;
  cout << accumulate(v.begin(), v.end(), 1, multiplies<int>() ) << endl;

  // lambda expressions
  cout << accumulate(v.begin(), v.end(), 1, 
		     [](int a, int b) { return a*b;} )
       << endl;
}
