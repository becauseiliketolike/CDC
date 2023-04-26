// Lex program to find the length of largest word

%{
	#include <stdio.h>
	#undef yywrap
	#define yywrap() 1
	int length = 0;
%}

%%
[a-zA-Z]+ {
    if(yyleng > length){
		length = yyleng;
	}
}
%%

int main()
{
	yylex();
	printf("Length of the largest word is: %d", length);
	return 0;
}

