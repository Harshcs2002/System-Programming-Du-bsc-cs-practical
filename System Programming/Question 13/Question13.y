  /*E:\Lex\Flex Windows\Bison\bin>bison -d Question13.y*/

  //E:\Lex\Flex Windows\Bison\bin>lex Question13.l

  //E:\Lex\Flex Windows\Bison\bin>gcc lex.yy.c Question13.tab.c

  //E:\Lex\Flex Windows\Bison\bin>a.exe

  //Question -13 A program in yacc to recognize the language(anb ,n>-10).(output to say input is valid or not)


%{
#include<stdio.h>
#include<stdlib.h>
#include "Question13.tab.h"
%}
%token A B NL
%%
S : A A A A A A A A A A S1 B NL
{ printf("\nValid String \n");
return 0;}
S1 : A S1
|;
%%
main(){
printf("\nEnter a String :: ");
yyparse();
}
yywrap(){}
yyerror(){
printf("\nInvalid String\n");
return 0;
}