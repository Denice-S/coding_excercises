#include <iostream>
using namespace std;
#include <stdio.h>
#include <stdlib.h>
#include <ctime>
// generate a random number, take in turn to subtract 1, 2 or 3, the person whose last move it is to subtract  to zero wins the game.

int main()
{                               //generate a random number between 20 and 30,we have to use srand and rand as just using rand gives the same number every time
  srand(time(NULL));            //sets the random up
  int total = rand() % 11 + 20; //chooses a random number between 20 and 30.
  cout << "The starting number is " << total << endl;
  int n = 0;
  //logic for computers turn
  while (true)
  {
    // win by leaving a multiple  of four for your opponent, ie the person who ends up as having 4 remaining on their turn will always lose.
    if ((total % 4) == 2)
    {
      total = total - 2;
      cout << "Computer subtracted 2." << endl;
    }
    else if ((total % 4) == 3)
    {
      total = total - 3;
      cout << "Computer subtracted 3." << endl;
    }
    else
    {
      total = total - 1;
      cout << "computer subtracted 1" << endl;
    }
    cout << "Current value: " << total << endl;
    if (total <= 0)
    {
      cout << "Computer wins!. " << endl;
      break;
    }
    //logic for players turn
    cout << "Would you like to subtract one two or three? ";
    cin >> n;

    if (cin.fail())
    {
      cin.clear();
      cin.ignore(numeric_limits<streamsize>::max(), '\n');
      cout << endl
           << "Invalid input, try again." << endl
           << endl;
    }
    while (n < 1 || n > 3)
    {
      cout << "You can only subtract one or two." << endl;
      cout << "Would you like to subtract one two or three? ";
      cin >> n;
      //this logic to deal with wrongly inputted stuff.
      if (cin.fail())
      {
        cin.clear();
        cin.ignore(numeric_limits<streamsize>::max(), '\n');
        cout << endl
             << "Invalid input, try again." << endl
             << endl;
      }
    }
    total = total - n;
    cout << "Current value: " << total << endl;
    if (total <= 0)
    {
      cout << "You won!. " << endl;
      break;
    }
  }
  return 0;
}