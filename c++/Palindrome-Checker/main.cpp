
#include <iostream>
#include <cstring>
using namespace std;

void  int_is_palindrome(){
   char string1[20];
    int i;
    int length;
    int flag = 0;
    cout << "Enter a string: "; cin >> string1;
    length = strlen(string1);
     for(i=0;i < length ;i++){
        if(string1[i] != string1[length-i-1]){
            flag = 1;
            break;
   }
}
 if (flag) {
        cout << string1 << " is not a palindrome" << endl; 
    }    
    else {
        cout << string1 << " is a palindrome" << endl; 
    }
}


int main(){
  int_is_palindrome();
     return 0;

}