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

%start START
%token BEGIN
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
%token ASSIGNMENT

%start program
%%

start	: START { Enter_new_scope(); }
	;

RIGHT_BRACE	: RIGHT_BRACE 	{ Enter_new_scope(); }
		; 

LEFT_BRACE	: LEFT_BRACE	{ Leave_current_scope(); }
		;



ASSIGNMENT : ID '=' exp	{ Insert{$1, $2); }
	   ;

exp	: term { $$ = $1 }
	| exp '+' term 		{$$ = $1 + $2;}
	| exp '-' term		{$$ = $1 - $2;}
	| exp '*' term		{$$ = $1 * $2;}
	| exp '/' term		{$$ = $1 / $2;}	
	| exp power term	{$$ = pow($1, $2);}
	;		
term	: INT	{$$ = $1}
	;


