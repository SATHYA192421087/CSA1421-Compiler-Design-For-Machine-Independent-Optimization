%{
int vc=0;
int cc=0;
%}

%%
[aeiouAEIOU]  { vc++; }
[a-zA-Z]      { cc++; }

%%

int yywrap(){}
int main()
{
    printf("Enter a Sting: ");
    yylex();
    printf("Vowel Count    :%d",vc);
    printf("\nConsonant Count:%d",cc);
    return 0;
}
