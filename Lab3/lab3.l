// Lex program to determine the character with the highest frequency in given string

%{
	#include <limits.h>
	#undef yywrap
	#define yywrap() 1
	int z[129] = {0};
%}

%%
[a-zA-Z]? {
    z[(int)yytext[0]]++;
}
%%

int main()
{
    int i, char_freq=INT_MIN, character;
    printf("Enter the string: ");
    yylex();
    for (i=0; i<129; i++)
    {
        if(char_freq < z[i])
        {
            char_freq = z[i];
            character = i;
        }
    }
    printf("Frequency is %d and the character with the highest frequency is %c", char_freq, character);
    return 0;
}

