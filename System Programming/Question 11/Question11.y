  /*E:\Lex\Flex Windows\Bison\bin>bison -d Question11.y*/

  //E:\Lex\Flex Windows\Bison\bin>lex Question11.l

  //E:\Lex\Flex Windows\Bison\bin>gcc lex.yy.c Question11.tab.c

  //E:\Lex\Flex Windows\Bison\bin>a.exe

  // Question -11 A program in yacc to evaluate an expression(simple calculator program for addition and subtraction,mutiplication ,divison)

%{
#include<stdio.h>
#include<stdlib.h>
#include "Question11.tab.h"
%}
%token NUM
%left '+' '-'
%left '/' '*'
%left '(' ')'
%%
expr:e{printf("Result is :: %d\n",$$);
return 0;}
e:e '+' e{$$ = $1+$3;}
|e '-' e{$$ = $1-$3;}
|e '*' e{$$ = $1*$3;}
|e '/' e{
if($3==0){
printf("\nDivision By Zero\n");
printf("Result is :: Undefined");
return 0;
}
else
$$ = $1/$3;}
|'(' e ')'{$$ = $2;}
|NUM {$$ = $1;}
%%
int main(){
printf("\nEnter the arithmetic expression ::");
yyparse();
printf("\nValid Expression\n");
return 0;
}
int yywrap(){
return 0;
}
int yyerror(){
printf("\nInvalid Expression\n");
exit(1);
}
