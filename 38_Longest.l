%{
#include <stdio.h>
int max = 0;
char longest[100];
%}

%%
[A-Za-z]+   {
                if(yyleng > max)
                {
                    max = yyleng;
                    strcpy(longest, yytext);
                }
            }

[ \t\n]+    ;
.           ;

%%

int main()
{
    printf("Enter sentence (Ctrl+D to stop):\n");
    yylex();
    printf("\nLongest Word : %s\n", longest);
    printf("Length       : %d\n", max);
    return 0;
}

int yywrap(){ return 1; }
