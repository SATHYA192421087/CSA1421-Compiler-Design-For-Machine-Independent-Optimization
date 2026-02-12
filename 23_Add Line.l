%{
#include <stdio.h>
int line = 1;
%}

%%
^        { printf("%d. ", line++); }
.*\n     { printf("%s", yytext); }
%%

int main()
{
    printf("Enter C program (Ctrl+D to stop):\n");
    yylex();
    return 0;
}
int yywrap(){ return 1; }
