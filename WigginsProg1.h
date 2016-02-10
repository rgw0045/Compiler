//Ricardo Wiggins ADT

#include <iostream>
#include <string>
#include <stdlib.h>
#include <stack>
#include <list>

//Class for Individual Symbol
class Symbol{
  private:
    string record;
    string key;
  public:
    Symbol(string record, string key);
};

//Class for Table
class SymbolTable{
  private:
    list<Symbol> Table;
  public:
    SymbolTable(string record, string key);
};

class ADT{
  private:
    stack<SymbolTable> Scope;
  private:
    ADT();
    void Enter_new_scope();
    void Leave_current_scope();
    void insert(string record, string key);
    bool Record_search(string key);

};

//proto type functions for the class

ADT::Enter_new_scope(){
  Scope.push();
}

ADT::Leave_current_scope(){
  Scope.pop();
}

ADT::Record_Search(string key){
  while(scope.iterator->next != NULL){
    if (Scope.iterator.key = key)
      return true;
  }

  return false;
}

ADT::Insert(string record, string key){
  if(Record_Search(string key) == false){
    
  }
}

