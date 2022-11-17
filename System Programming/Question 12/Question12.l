%{
#include<stdio.h>
#include<stdlib.h>
#include "Question12.tab.h"
%}
%option noyywrap
%%
[a] { return A; }
[b] { return B; }
[ |\n|\t] { return yytext[0]; }
. { return yytext[0]; }
%%