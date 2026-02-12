%{
#include <stdio.h>
%}

%%
"abc"      { printf("ABC"); }
.|\n       { printf("%s", yytext); }
%%

int main()
{
    printf("Enter string (Press Ctrl+D to stop):\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
