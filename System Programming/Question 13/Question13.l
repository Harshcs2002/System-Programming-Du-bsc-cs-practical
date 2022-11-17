%{
#include<stdio.h>
#include<stdlib.h>
#include "Question13.tab.h"
%}
%%
[a] {return A;}
[b] {return B;}
\n {return NL;}
. {return yytext[0];}
%%