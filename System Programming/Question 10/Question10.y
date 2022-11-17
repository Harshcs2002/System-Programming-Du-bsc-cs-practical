 /* E:\Lex\Flex Windows\Bison\bin>bison -d Question10.y*/

 //E:\Lex\Flex Windows\Bison\bin>lex Question10.l
 
 //E:\Lex\Flex Windows\Bison\bin>gcc lex.yy.c Question10.tab.c
 //E:\Lex\Flex Windows\Bison\bin>a.exe

 // Question -10 A program in yacc which recognizes a valid variable which starts with letter followed by a digit . The letter should be in lowercase only .


%{
#include <stdio.h>
#include <stdlib.h>
#include "Question10.tab.h"
%}
%token D L
%%
S : L D { printf("VALID IDENTIFIER\n"); }
;
%%
int main()
{
 printf("\n Enter identifier\n");
yyparse();
return 0;
}
int yywrap(){}
int yyerror(){
printf("\nInvalid Identifier\n");
exit(1);
}
