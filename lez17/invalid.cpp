// Iterator invalidation

#include <vector>
#include <iostream>
using namespace std;


int main() {
  
  vector<int> v = {0,1,2,3,4,5,6,7,8,9};
  //for (int i=0; i<10; ++i) v.push_back(i);
  
  auto it = v.begin()+7;
  cout << *it << endl;
  v.insert(v.begin()+3, 99);
  // Tutti gli iteratori a posizioni uguali o successive
  // vengono *invalidati*
  cout << *it << endl;

}
