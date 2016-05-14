%{
  #include "y.tab.h"
  #include <cstdio>
%}

name		[a-zA-Z0-9]+
int		[0-9]+
char		[a-z]+
char		[A-Z]+
whitespace 	[ \r\t\w\f]
linefeed 	\n
assignment	'='
%%

{name}		{ return NAME; }
{int}		{ return INT; }
{char}		{ return CHAR; }
{assignment}	{ return ASSIGNMENT; }
begin		{ return START; }
end		{ return END; }
":"		{ return COLON; }
"->"		{ return RIGHT_ARROW; }
"}"		{ return RIGHT_BRACE; }
"{"		{ return LEFT_BRACE; }
"("		{ return LEFT_PARENTHESIS; }
")"		{ return RIGHT_PARENTHESIS; }
"["		{ return LEFT_BRACKET; }
"]"		{ return RIGHT_BRACKET; }
"&"                                     { return ('&');         }
";"                                     { return (';');         }
","                                     { return (',');         }
"+"                                     { return ('+');         }
"-"                                     { return ('-');         }
"*"                                     { return ('*');         }
"/"                                     { return ('/');         }
"!"                                     { return ('!');         }
">"                                     { return ('>');         }
"<"                                     { return ('<');         }
{whitespace}	
{linefeed} 	++yylineno;

%%
int yywrap(void)	{return 1;}
