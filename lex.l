%{
#include <iostream>
using namespace std;
#define YY_DECL extern "C" int yylex()
%}
%%
[ \t\n]			;
[0-9]+			{cout << "Found an Integer: " << yytext << "\n" << endl; }
[a-z]+			{cout << "Found a char: " << yytext << "\n" << endl; }
[A-Z]+			{cout << "Found a char: " << yytext << "\n" << endl; }
[a-zA-Z0-9]+		{cout << "Found a string: " << yytext << "\n" << endl;}
"("			{return (LPAREN);	}
")"			{return (RPAREMN);	}
"}" 			{return (RCURLY);	}
"{"			{return (LCURLY);	}
"["                     {return (LBRACKET);     }
"]"                     {return (RBRACKET);     }
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
%%
int main (int, char**) {
  //lex through the input
  yylex();
}
