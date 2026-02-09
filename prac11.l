%{
    #include <stdio.h>
    #include <stdlib.h>
%}
%%
[0-9]+ {
            int n = atoi(yytext);
            if (n % 2 == 0)
                printf("%s is an even number.\n", yytext);
            else
                printf("%s is an odd number.\n", yytext);
        }
[0-9]+[a-zA-Z]+ {
            printf("%s is not a valid number.\n", yytext);
        }
[a-zA-Z]+ {
            printf("%s is not a valid number.\n", yytext);
        }
\n      ;
.       ;
%%
int main() {
    printf("Enter a string: ");
    yylex();
    return 0;
}
int yywrap() {
    return 1;
}