  /*E:\Lex\Flex Windows\Lex\bin>flex Question4.l*/

  //E:\Lex\Flex Windows\Lex\bin>gcc lex.yy.c -o Question4

  //E:\Lex\Flex Windows\Lex\bin>Question4.exe

  //Q4 Write a Lex program that distinguish keywords ,integers ,floats ,identifiers ,operators and comments in any program 

%{
#include<stdio.h>
%}
%%
[0-9]* {printf("Integer\n");}
[0-9]+\.[0-9]+ {printf("Float\n");}
int|float|if|else|char|printf|main|switch {printf("Keyword\n");}
[+|*|/|%|-|&] {printf("Operator\n");}
"/*".*"*/" {printf("Comment\n");}
[_a-zA-Z][_a-zA-Z0-9]{0,30} {printf("Identifier\n");}
. {printf("Invalid\n");}
%%
int main()
{
 yylex();
return 0;
}
int yywrap()
{
return 1;
}
