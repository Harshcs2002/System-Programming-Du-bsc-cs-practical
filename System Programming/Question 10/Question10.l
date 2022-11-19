%{
#include <stdio.h>
#include <stdlib.h>
#include "Question10.tab.h"
%}
%option noyywrap
%%
[a-z] { return L; }
[0-9] { return D; }
\n { return 0; }
. { return yytext[0]; }
%%
