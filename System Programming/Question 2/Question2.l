  /*E:\Lex\Flex Windows\Lex\bin>flex Question2.l*/

  //E:\Lex\Flex Windows\Lex\bin>gcc lex.yy.c -o Question2

  //E:\Lex\Flex Windows\Lex\bin>Question2.exe

  //Ques 2 Write a Lex program that implements the Caesar cipher: it replaces every letter with the one three letters after 
   //in alphabetical order, wrapping around at Z. e.g. a is replaced by d, b by e, and so on z by c.



%{
#include<stdio.h>
%}
%%
[A-Wa-w] {printf("%c",yytext[0]+3);}
[X-Zx-z] {printf("%c",yytext[0]-23);}
%%
int main()
{
 printf("Enter your text \n");
 yylex();
return 0;
}
int yywrap()
{
 return 1;
 }