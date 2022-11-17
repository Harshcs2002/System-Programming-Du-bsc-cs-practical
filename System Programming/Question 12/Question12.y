  /*E:\Lex\Flex Windows\Bison\bin>bison -d Question12.y */

 //E:\Lex\Flex Windows\Bison\bin>lex Question12.l

  //E:\Lex\Flex Windows\Bison\bin>gcc lex.yy.c Question12.tab.c
  
  //E:\Lex\Flex Windows\Bison\bin>a.exe

  //Question -12 A program in yacc to recognize the strings“ab””aabb”,... of the language (anbn,n>=1).


%{
#include<stdio.h>
#include<stdlib.h>
#include "Question12.tab.h"
%}
%token A B
%%
S : E '\n' { printf("VALID STRING\n"); exit(0); }
;
E : A E B
| A B
;
%%
int main(){
printf("\nEnter the string :: ");
yyparse();
return 0;
}
yywrap(){}
yyerror(){
printf("\nInvalid String");
}
