%{
#include <stdio.h>
%}

%%
[0-9]+"."[0-9]+     { printf("Float Constant: %s\n", yytext); }
[0-9]+              { printf("Integer Constant: %s\n", yytext); }
%%

int main()
{
    printf("Enter C program (Ctrl+D to stop):\n");
    yylex();
    return 0;
}
int yywrap(){ return 1; }
