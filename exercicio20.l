%{
	/* Exercício 2.20 - K. C. Louden - Escreva um programa para colocar em caixa alta todos os comentários de um programa em C */

	#include <stdio.h>
	#include <ctype.h>
	#ifndef FALSE
	#define FALSE 0
	#endif
	#ifndef TRUE
	#define TRUE  1
	#endif

%}
%%
"/*" {
		char c;
		int done = FALSE;
		ECHO;
		do
		{
			while((c = input()) != '*') putchar(toupper(c));
			putchar(c);
			while((c = input()) == '*') putchar(c);
			putchar(c);
			if(c == '/') done = TRUE;
		}while(!done);
	 }
%%

	int main()
	{
		yylex();
		return(0);
	}