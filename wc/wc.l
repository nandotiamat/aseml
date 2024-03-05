%{
int chars = 0;
int words = 0;
int lines = 0;
%}

%%
[a-zA-Z]+ { words++; chars += strlen(yytext); }
\n { chars++; lines++; }
. { chars++;}
%%

int main() {
	yylex();
	printf("%d\t%d\t%d", chars, lines, words);
	return 0;
}
