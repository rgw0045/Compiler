%option noyywrap

%{
  #include "gram.tab.h"
  #include <cstdio>
%}

name		[a-zA-Z0-9]+
int		[0-9]+
char		[a-z]+
char		[A-Z]+
whitespace 	[ \r\t\w\f]
linefeed 	\n

%%

{name}		{ return NAME; }
{int}		{ return INT; }
{char}		{ return CHAR; }
":"		{ return COLON; }
"->"		{ return RIGHT_ARROW; }
"}"		{ return RIGHT_BRACE; }
"{"		{ return LEFT_BRACE; }
"("		{ return LEFT_PARENTHESIS; }
")"		{ return RIGHT_PARENTHESIS; }
"["		{ return LEFT_BRACKET; }
"]"		{ return RIGHT_BRACKET; }
"&"                                     { return ('&');         }
"="                                     { return ('=');         }
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
