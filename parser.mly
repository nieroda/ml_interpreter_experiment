%{
open Ast
%}

%token <int> INT 
%token <string> ID
%token TRUE 
%token FALSE
%token MUL
%token ADD
%token SUB
%token DIV 
%token MOD 
%token VAR
%token ASSIGN
%token IF
%token THEN
%token END
%token EOF 
%token EQUALITY
%token LPAREN 
%token RPAREN
%token PRINT

%left MUL
%left ADD
%left SUB
%left DIV 
%left MOD

%start prog 
%type <Ast.expr> prog 
%%



prog:
    /* | expr; prog; { Ast($1, $2) } */
    | expr; EOF { $1 };

expr:
    | INT;    { Int $1 }
    | ID;     { Var $1 }
    | TRUE;   { Bool true }
    | FALSE;  { Bool false }
    /* | PRINT; expr { Print($2) } */
    | expr; MUL; expr { BinaryOp($1, Mul, $3) }
    | expr; ADD; expr { BinaryOp($1, Add, $3) }
    | expr; SUB; expr { BinaryOp($1, Sub, $3) }
    | expr; DIV; expr { BinaryOp($1, Div, $3) }
    | expr; MOD; expr { BinaryOp($1, Mod, $3) }
    /* | VAR; ID; ASSIGN; expr; END; { Val($2, $4) } */
    /* | IF; LPAREN; expr; RPAREN; expr; END; { If($3, $5) } */
 
