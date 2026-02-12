%{
#include <stdio.h>
%}

DIGIT   [0-9]
INT     {DIGIT}+
FLOAT   {DIGIT}+\.{DIGIT}+

%%
{FLOAT}    { printf("Valid Digit\n"); }
{INT}      { printf("Valid Digit\n"); }
\n         ;
.          { printf("Invalid input\n"); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a number: ");
    yylex();
    return 0;
}
