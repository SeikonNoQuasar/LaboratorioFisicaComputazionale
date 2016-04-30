#include <numeric>  // accumulate sta qui, non in <algorithm>
#include <vector>
#include <iostream>
using namespace std;


int main() {
  vector<int> v = {4,4,7,6,2};
  
  // accumulate somma tutti gli elementi tra il primo iteratore
  // (incluso) e il secondo (escluso), partendo dal valore iniziale
  // (che è il terzo argomento)
  cout << accumulate(v.begin(), v.end(), 0) << endl;

  // accumulate ha un overload con 4 parametri
  // il quarto è una funzione che vuole due oggetti di tipo T
  // e restituisce un oggetto di tipo T

  // es: produttoria
}
