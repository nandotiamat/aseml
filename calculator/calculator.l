%%

"*" { printf("TIMES\n"); }
"/" { printf("DIVIDE\n"); }
"+" { printf("PLUS\n"); }
"-" { printf("MINUS\n"); }
"|" { printf("ABS\n"); }
[0-9]+ { printf("Number: %s\n", yytext); }
. { printf("Carattere misterioso! '%s'\n", yytext);}
%%

int main() {
    yylex();
}