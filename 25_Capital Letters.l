%{
#include <stdio.h>
%}

%%
[A-Z]+    { printf("Capital Word: %s\n", yytext); }
%%

int main()
{
    printf("Enter text (Ctrl+D to stop):\n");
    yylex();
    return 0;
}
int yywrap(){ return 1; }
