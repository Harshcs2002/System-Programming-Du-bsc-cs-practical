  /*E:\Lex\Flex Windows\Lex\bin>flex Question7.l*/

  //E:\Lex\Flex Windows\Lex\bin>gcc lex.yy.c -o Question7

  //E:\Lex\Flex Windows\Lex\bin>Question7.exe
  //Enter string : abcde

  //Q 7 Write a Lex specification program that generates a Cprogram which takes a string “abcd” and prints the following output.abcd abc


%option noyywrap
%{
	#include<stdio.h>
%}

%%
[A-Za-z]+ {int len=yyleng;
 int i=len;
 printf("\n");
 while(i>=0) 
 {
 int j=0;
 while(j<i) 
 {
printf("%c",yytext[j]);
j++;
 } 
 printf("\n");
 i--;
 }
 } 
%%
int main()
{
     printf("Enter string : ");
      yylex();

	return 0;
}