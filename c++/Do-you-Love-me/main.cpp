#include <iostream>
using namespace std;
#include<string>
/*refactored from the original code as that was not working properly... I have done the following:1)removed the function call from within to while loop to outside as this was causing the repeat statements 2) there was no else clause in the original so  now that is fixed below. in the orignal the input variable was a char, so in cin when you typed more than 1 character by accident it was having problems and causing cin to fail, i changed the input type to string which has made this better you can now enter more than 1 character of "rubbish" and it doesnt error. Improvements could still be made as even though i changed the input type to string, cin will consider blank spaces to be the end of input. so this neds further refinement for error checking*/

void love_me(){

 string ans= "";
 
  while (ans!="y" && ans!="n"){
    cout<<endl<<"Do you love me, answer y or n?: ";
    cin>>ans;
    
    if(ans!="n" &&ans!="y"){
      cout<<endl<<"Invalid Reply, try again";
      continue;}
    else if (ans=="n"){
      cout<<endl<<"I hate you";}
    else{
      cout<<endl<<"I love you too!";
    }
}
love_me();
}


int main(){
  love_me();
return 0;
}

