#include <iostream> // allows program to output data to the screen

using std::cout;
using std::cin;
using std::endl;

// function main begins program execution
int main(){

  int nInput;
  int n10000, n1000, n100, n10, n1;
  
  cout << "Enter a 5-digit number ";
  cin >> nInput;
  
  n10000 = nInput/10000;
  n1000 = (nInput%(10000*n10000))/1000;
  n100 = (nInput%(10000*n10000 + 1000*n1000))/100;
  n10 = (nInput%(10000*n10000 + 1000*n1000 + 100*n100))/10;
  n1 = (nInput%(10000*n10000 + 1000*n1000 + 100*n100 + 10*n10));
  
  cout << n10000 << " " << n1000 << " " << n100 << " " << n10 << " " << n1 << endl;
  
  
} // end function main
