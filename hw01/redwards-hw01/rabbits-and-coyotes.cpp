/* 
 Reginald Edwards
 9 April 2012
 reginald.edwards@gmail.com
 
 This program takes as input values constants to a differential equation
 governing the population dynamics of a closed system.
 
 This program produces a space-separated text file of rabbit and coyote 
 populations over time.
*/

#include <iostream>
#include <cstdlib>
using std::cout;
using std::cin;
using std::endl;

// function main begins program execution
int main(int argc, const char* argv[]){

  float alpha, beta, gamma, pi, r, c, N, h;
  
  alpha = atof( argv[1] );
  beta = atof( argv[2] );
  gamma = atof( argv[3] );
  pi = atof( argv[4] );
  r = atof( argv[5] );
  c = atof( argv[6] );
  N = atof( argv[7] ); // number of time periods
  h = atof( argv[8] ); // step size for Euler method
  
  // Use first order Euler approximation
  // see http://en.wikipedia.org/wiki/Euler_method
  float r1, c1;
  int tx=0;
  while(tx<N){
    r1 = r + h*(alpha*r - beta*r*c);
    c1 = c + h*(-1*gamma*c + pi*r*c);
    r = r1;
    c = c1;
    cout << tx << " " << r << " "<< c << endl;
    tx++;
  }
    
}
