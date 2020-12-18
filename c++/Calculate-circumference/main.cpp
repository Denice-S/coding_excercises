#include <iostream>
using namespace std;
//program to declare the constant pi and determine the circumference of a circle with diameter 6
int main()
{
  float pi = 3.141;
  int diameter = 6;
  cout << "The circumference is " << pi * diameter << "\n";
  //program to ask user for the diameter and calculate ciurcumference and area.
  cout << "Enter radius of circle\n";
  cin >> diameter;
  float radius = diameter / 2;
  float area = pi * radius * radius;
  // Circumference of Circle = 2 X PI x Radius
  cout << "The circumference is " << pi * diameter << "\n";
  cout << "The Area of circle : " << area;
  return 0;
}