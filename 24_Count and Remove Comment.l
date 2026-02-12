%{
#include <stdio.h>
int comments = 0;
%}

%%
"//".*                        { comments++; }
"/*"([^*]|[\r\n]|"*"[^/])*"*/" { comments++; }

.|\n                          { printf("%s", yytext); }
%%

int main()
{
    printf("Enter C program (Ctrl+D to stop):\n");
    yylex();
    printf("\nTotal Comments Removed: %d\n", comments);
    return 0;
}
int yywrap(){ return 1; }
