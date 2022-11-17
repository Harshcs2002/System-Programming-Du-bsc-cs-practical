  /*E:\Lex\Flex Windows\Lex\bin>flex Question5.l*/

  //E:\Lex\Flex Windows\Lex\bin>gcc lex.yy.c -o Question5

  //E:\Lex\Flex Windows\Lex\bin>Question5.exe

  //Q5 Write a Lex program to count the number of identifiers in a C file.


%{
#include <stdio.h>
int count=0;
%}
WS [ \t\n]*
ID [_a-zA-Z][_a-zA-Z0-9]*
DECLN "int"|"float"|"char"|"short"|"long"|"unsigned"
%x DEFN
%% 
{DECLN} {BEGIN DEFN;}
<DEFN>{WS}{ID}{WS}\, count++;
<DEFN>{WS}{ID}{WS}\; count++;
<*>\n ;
<*>. ; ;
%%
int main()
{
yyin=fopen("q55.c","r");
yylex();
printf("No of identifiers : %d\n",count);
return 0;
}
int yywrap(){
return 1;
}