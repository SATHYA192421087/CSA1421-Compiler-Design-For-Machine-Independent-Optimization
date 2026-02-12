%{
#include <stdio.h>
%}

%%
(0[1-9]|[12][0-9]|3[01])\/
(0[1-9]|1[0-2])\/
(19[0-9]{2}|20[0-9]{2})
        { printf("Valid DOB : %s\n", yytext); }

.|\n    { printf("Invalid DOB\n"); return 0; }

%%

int main()
{
    printf("Enter DOB (DD/MM/YYYY):\n");
    yylex();
    return 0;
}

int yywrap(){ return 1; }
