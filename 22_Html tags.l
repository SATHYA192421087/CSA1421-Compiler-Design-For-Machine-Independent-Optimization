%{
#include <stdio.h>
%}

%%
"<"[^>]+">"     { printf("HTML Tag: %s\n", yytext); }
%%

int main()
{
    printf("Enter HTML code (Ctrl+D to stop):\n");
    yylex();
    return 0;
}
int yywrap(){ return 1; }
