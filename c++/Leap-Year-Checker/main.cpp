#include <iostream>
using namespace std;

int main() {
  int year;
  //grab users year input
  cout << "Enter a year\n";
  cin>>year;
   if (year < 1752)
   cout<<"There were no leap years before 1752 please enter another year";
   //if year divides exactly by four AND does not divide by 100 then it is a lear year OR if it divides excatly by 400 then it is a leap year
   else if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0))
   cout<<year<<" is a leap year";
   else
   //otherwise it is not a leap year
   cout<<year<<" is not a leap year";
   return 0;
}