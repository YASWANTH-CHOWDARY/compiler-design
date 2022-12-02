/*Lex program to count number of lines in given input*/
%{
#include<stdio.h>
int lc=0,cc=0;
%}
%%
[\n] { lc++; cc+=yyleng;}
%%
int main(int argc ,char* argv[ ])
{
printf("Enter the input:\n");
yylex();
printf("The number of lines=%d\n",lc);
}
int yywrap( )
{
return 1;
}