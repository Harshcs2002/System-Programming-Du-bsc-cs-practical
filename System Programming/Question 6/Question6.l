  /*E:\Lex\Flex Windows\Lex\bin>flex Question6.l*/

  /*E:\Lex\Flex Windows\Lex\bin>gcc lex.yy.c -o Question6*/

  /*E:\Lex\Flex Windows\Lex\bin>Question6.exe sumofdigit.c*/ 

  //Q6 Write a Lex program to count the number of words, characters, blank spaces and lines in a C file.


%option noyywrap
%{
	#include<stdio.h>
int lines=0, blanks=0, chars=0, words=0;
%}
%%
\n { lines++; chars++;}
([a-zA-Z0-9])* { words++; chars += yyleng;}
([ ])+ { blanks++; chars++;}
\t { blanks += 4; chars ++;}
. { chars++;}
%%
int main(int argc, char*argv[]){
yyin = fopen(argv[1],"r");
yylex();
printf("\n'%s' has total\n", argv[1]);
printf("-> %d new lines\n", lines);
printf("-> %d blanks\n", blanks);
printf("-> %d characters\n", chars);
printf("-> %d words.\n\n", words);
fclose(yyin);
return 1;
}
