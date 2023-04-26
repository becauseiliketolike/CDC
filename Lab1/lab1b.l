// Lex program to find no. of vowels and consonents in a string

%{
	#include <stdio.h>
	#undef yywrap
	#define yywrap() 1 
	int v = 0;
	int c = 0;
%}

%%
["a"|"e"|"i"|"o"|"u"|"A"|"E"|"I"|"O"|"U"] {
	v++;
}
[a-zA-Z] {
	c++;
}
%%

int main()
{
	printf("Enter the string: ");
	yylex();
	printf("No. of vowels = %d and No. of Consonents = %d", v, c);
	return 0;
}
