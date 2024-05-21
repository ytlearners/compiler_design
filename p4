%{
#include<stdio.h>
%}

digit [0-9]
letter [a-zA-Z]

%%

for|while|do|int|float|char|double|static|switch|case { printf("Reserved word: %s\n", yytext); }
{letter}({letter}|{digit})* { printf("Identifier: %s\n", yytext); }

%%

int main()
{
    yylex();
    return 0;
}

