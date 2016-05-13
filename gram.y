%{
  #include <math.h>
  #include <stdio.h>
  #include <stdlib.h>
  int yylex (void);
  void yyerror (char const *S);
%}

%union { /* Define stack type */
        int intstuff;
}


%token NAME
%token INT
%token CHAR
%token COLON
%token RIGHT_ARROW
%token RIGHT_BRACE
%token LEFT_BRACE
%token LEFT_PARENTHESIS
%token RIGHT_PARENTHESIS
%token LEFT_BRACKET
%token RIGHT_BRACKET

%start program
