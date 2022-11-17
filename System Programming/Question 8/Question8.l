   /*E:\Lex\Flex Windows\Lex\bin>flex Question8.l*/

  //E:\Lex\Flex Windows\Lex\bin>gcc lex.yy.c -o Question8

  //E:\Lex\Flex Windows\Lex\bin>Question8.exe

  // Q8 A program in Lex to recognize a valid arithmetic expression.


%{
#include<strings.h>
int opcount=0,intcount=0,check=1,top=0;
%}
%%
['('] {check=0;}
[')'] {check=1;}
[+|*|/|-] {opcount++;}
[0-9]+ {intcount++;}
. {printf("Invalid Input(only digits and +|-|*|/ is valid\n");}
%%
int main()
{
yyin=fopen("q8.txt","r");
yylex();
if(intcount=opcount+1)
{
if(check==1)
{
 printf("Expression is CORRECT!\n");
}
else{
 printf("')' bracket missing from expression\n");
}
} 
else{
 printf("Expression is INCORRECT!\n");
}
 return 0;
}
int yywrap()
{ 
 return 1;
}
