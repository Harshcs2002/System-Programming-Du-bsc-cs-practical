%{
#include<stdio.h>
%}
%%
[0-9]+ {printf("Integer\n");}
[0-9]+\.[0-9]+ {printf("Float\n");}
int|float|if|else|char|printf|main|switch {printf("Keyword\n");}
[+|*|/|%|-|&] {printf("Operator\n");}
"/*".*"*/" {printf("Comment\n");}
[_a-zA-Z][_a-zA-Z0-9]{0,30} {printf("Identifier\n");}
. {printf("Invalid\n");}
%%
int main()
{
  printf("\n Enter the value \n");
 yylex();
return 0;
}
int yywrap()
{
return 1;
}
