%{
	/* Escreva um arquivo de entrada Lex para produzir
	um programa que conte caracteres, palavras e linhas em
	arquivo de texto e produza um relatório. Defina uma 
	palavra como qualquer sequência de letras e/ou dígitos,
	sem pontuação ou espaços. Pontuação e espaços não contam
	como palavras! */

	#include <stdio.h>
	#include <stdlib.h>

	int num_lines = 0;
	int num_words = 0;
	int num_chars = 0;
%}
digit [0-9]
letter [a-zA-Z]

%%
\n  ++num_lines;
({letter}|{digit})+ ++num_words;
. ++num_chars;
%%

	int main()
	{
		yylex();
		FILE *y_out;
		y_out = fopen("relatorio.txt","w");
		printf("num_chars = %d, num_words = %d, num_lines = %d.",num_chars,num_words,num_lines);
		return(0);
	}