%{
#include <stdio.h>
%}

%%
https?:\/\/[A-Za-z0-9.-]+\.[A-Za-z]{2,}(/[A-Za-z0-9._\/-]*)?
        { printf("Valid URL   : %s\n", yytext); }

.|\n    { printf("Invalid URL\n"); return 0; }

%%

int main()
{
    printf("Enter URL:\n");
    yylex();
    return 0;
}

int yywrap(){ return 1; }
