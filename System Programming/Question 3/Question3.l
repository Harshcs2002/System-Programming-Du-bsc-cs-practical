  /*E:\Lex\Flex Windows\Lex\bin>flex Question3.l*/

  //E:\Lex\Flex Windows\Lex\bin>gcc lex.yy.c -o Question3

  //E:\Lex\Flex Windows\Lex\bin>Question3.exe

 
 // Ques 3 Write a Lex program that finds the longest word (defined as a contiguous string of upper- and lower-case letters) in the input.

%option noyywrap
%{
	#include<stdio.h>
        #include<string.h>
         int count =0;
       char longest[68];

%}

%%
[A-Za-z0-9]+ { if (yyleng >count) {
 count = yyleng;
 strcpy(longest,yytext);
 }
 }

%%
int main()
{
 yyin = fopen("sample1.txt","r");
 yylex();
 printf("longest word is : %s\n",longest);
return 0;
}

