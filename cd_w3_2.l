/*Lex program to count number of vowels and number of consonents in a string*/
%{
#include<stdio.h>
int vowels=0;
int consonants=0;
%}
%%
[aeiouAEIOU] {vowels++;}
[a-zA-Z] {consonants++;}
%%
int yywrap()
{
return 1;
}
main()
{
printf("Enter the string.. at end press^d\n");
yylex();
printf("No. of vowels=%d\n No. of consonants=%d\n",vowels,consonants);
}