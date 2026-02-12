%{
%}

%%

[6-9][0-9]{9} {printf("\nMobile Number Valid");}

.+ {printf("Mobile Number Invalid");}

%%
int yywrap(void){}

int main()
{
     printf("\nEnter Mobile Number:");
     yylex();
}