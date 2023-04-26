// Lex program to convert decimal to binary

%{
	#include <stdio.h>
	#undef yywrap
	#define yywrap() 1
	int num, r, a=1, b=0;
%}

DIGIT [0-9]
%%
{DIGIT}+ {
	num = atoi(yytext);
	while (num > 0)
	{
		r = num % 2;
		b += r * a;
		a *= 10;
		num /= 2;
	}
	printf("%d", b);
	b = 0;
	a = 1;
}
%%

int main()
{
	yylex();
	return 0;
}
