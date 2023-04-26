// Lex program to check if string literal is valid or not

%{
	#include <stdio.h>
	#undef yywrap
	#define yywrap() 1
%}

%%
[a-zA-Z_]([a-zA-Z0-9_])* {
	printf("Valid");
}
.* {
	printf("Invalid");
}
%%

int main()
{
	yylex();
	return 0;
}
