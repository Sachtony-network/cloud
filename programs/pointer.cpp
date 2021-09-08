#include <iostream>
#include <string>
using namespace std;

int main() {
  string enterprise = "Sachtony";  // A string variable
  string* son = &enterprise;  // A pointer variable that stores the address of enterprise

  // Output the value of enterprise
  cout << enterprise << "\n";

  // Output the memory address of enterprise
  cout << &enterprise << "\n";

  // Output the memory address of enterprise with the pointer
  cout << son << "\n";
  return 0;
}
