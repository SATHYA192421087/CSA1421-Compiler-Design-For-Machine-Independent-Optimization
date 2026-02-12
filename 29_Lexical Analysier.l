%{
#include <stdio.h>
%}

%%
"#include"[^\n]*        { printf("Header File      : %s\n", yytext); }

"int"|"void"|"float"|"char"|"return" 
                        { printf("Keyword          : %s\n", yytext); }

[A-Za-z_][A-Za-z0-9_]*  { printf("Identifier       : %s\n", yytext); }

[0-9]+                  { printf("Constant         : %s\n", yytext); }

\".*\"                  { printf("String Literal   : %s\n", yytext); }

"="|"+"|"-"|"*"|"/"    { printf("Operator         : %s\n", yytext); }

","|";"|"("|")"|"{"|"}"
                        { printf("Special Symbol   : %s\n", yytext); }

[ \t\n]+                ;   /* Ignore whitespace */

.                       { printf("Unknown Token    : %s\n", yytext); }

%%

int main()
{
    printf("Enter C Program (Ctrl+D to stop):\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
