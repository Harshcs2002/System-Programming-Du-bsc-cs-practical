%{
#include<stdio.h>
#include<stdlib.h>
#include "practical2.tab.h"
int yylval;
%}
%%
[0-9]+ {yylval = atoi(yytext);
return NUM;}
[\t]+ ;
\n {return 0;}
. {return yytext[0];}
%%