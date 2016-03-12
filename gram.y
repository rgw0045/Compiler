%{
#include <cstdio>
#include <iostream>
using namespace std;

extern "C" int yylex();
extern "C" int yyparse();
extern "C" FILE *yyin;

void yyerror(const char *s);
%}

%union {
  int ival;
  float fval
  char *sval;
}

%token <ival> INT
%token <fval> FLOAT
%token <sval> STRING

%%

grammar:
  INT grammar       {cout << "bison found an int: " << $1 << endl;
  |  FLOAT grammar  {cout << "bison found a float: " << $1 << endl;
  |  STRING grammar {cout << "bison found a string:  "<< $1 << endl;
  |  INT            {cout << "bison found an int: " << $1 << endl;
  |  FLOAT          {cout << "bison found an float: " << $1 << endl;
  |  STRING         {cout << "bison found an string: " << $1 << endl;
  ;
%%   

int main(int, char**) {
  FILE *myfile = fopen("a.lex.l", "r");

  if(!myfile) {
    cout << "Can't open file" << endl;
    return -1;
  }
  yyin = myfile;

  do {
        yyparse();
  }  while (!feof(yyin));

} 

void yyerror(const char *p) {
  cout << "Parsing error: << a << endl;
  exit(-1);
}
