  /* E:\Lex\Flex Windows\Bison\bin>bison -d Question9.y */

  //E:\Lex\Flex Windows\Bison\bin>lex Question9.l

  //E:\Lex\Flex Windows\Bison\bin>gcc lex.yy.c Question9.tab.c

  //E:\Lex\Flex Windows\Bison\bin>a.exe

  //Question -9 Write a YACC program to find the validity of a given expression (for operators + - * and /

%{
#include "Question9.tab.h"
#include<stdio.h>
#include<stdlib.h>
%}
%token NUM VAR NL
%%

%left '+' '-' '*' '/' ;
S : S1 NL{printf("\nValid Expression\n");return 0;}
S1 : S1 '+' S1|S1 '-' S1|S1 '/' S1|S1 '*' S1| '(' S1 ')' | VAR | NUM |;
%%
int main(){
printf("\nEnter an Expression :: ");
yyparse();
return 0;
}
int yywrap(){}
int yyerror(){
printf("\nInvalid Expression\n");
exit(1);
}
