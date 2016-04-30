#include <algorithm>
#include <vector>
#include <iostream>
using namespace std;


struct Widget {
  int val;
  Widget(int v) : val(v) {};
};


// Predicato binario:
// funzione di due Widget che restituisce un bool
bool Wcomp(const Widget & w1, const Widget & w2) {
  return ( w1.val > w2.val );
}

int main() {

  vector<Widget> v = {3,7,6,3,4,2,1};
  
  // sort accetta tre parametri
  // il terzo è un predicato binario
  sort(v.begin(),v.end(),Wcomp);
  for (auto el : v) { cout << el.val << endl;}
  

}
