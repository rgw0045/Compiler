extern int yyparse();

#include <iostream>

using namespace std;

int main(){

  int result = yyparse();
  if(result)
    cout << "The input parsed correctly" << endl;
  else
    cout << "The input is invalid" << endl;

  return result;
}
