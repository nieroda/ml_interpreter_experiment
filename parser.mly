%{
open Ast
}%

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
%token EQUALS
%token IF
%token EOF 

%left MUL
%left ADD
%left SUB
%left DIV 
%left MOD

%start <Ast.expr> prog 
%% 

prog:
    | e = expr; EOF { e }
    ;

expr:
    | i = INT { Int i }
    | x = ID { Var x }
    | TRUE { Bool true }
    | FALSE { Bool false }
    | e1 = expr; MUL; e2 = expr { BinaryOp(e1, Mul, e2) }
    | e1 = expr; ADD; e2 = expr { BinaryOp(e1, Add, e2) }
    | e1 = expr; SUB; e2 = expr { BinaryOp(e1, Sub, e2) }
    | e1 = expr; DIV; e2 = expr { BinaryOp(e1, Div, e2) }
    | e1 = expr; MOD; e2 = expr { BinaryOp(e1, Mod, e2) }
    | VAR; x = ID; EQUALS; e1 = expr { Val(x, e1) }
    | IF; e1 = expr; THEN; e2 = expr { If(e1, e2) }
    ;