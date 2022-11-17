  /*E:\Lex\Flex Windows\Lex\bin>flex Question1.l*/

  //E:\Lex\Flex Windows\Lex\bin>gcc lex.yy.c -o Question1

  //E:\Lex\Flex Windows\Lex\bin>Question1.exe

  //Q1 Write a Lex program to count the number of lines and characters in the input file.

%{
#include<stdio.h>
int lines =0,lcharacter=0;
%}
%%
\n {lines++;}
[A-Za-z] lcharacter++;
%%
int main()
{
 yyin = fopen("sample1.txt","r");
yylex();
printf("\n File contents....\n");
printf("\n\t%d Line ",lines);
printf("\n\t%d Character ",lcharacter);
return 0;
}
int yywrap()
{
return 1;
}
