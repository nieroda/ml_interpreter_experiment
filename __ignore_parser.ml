type token =
  | INT of (int)
  | ID of (string)
  | TRUE
  | FALSE
  | MUL
  | ADD
  | SUB
  | DIV
  | MOD
  | VAR
  | EQUALS
  | IF
  | THEN
  | EOF

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
open Ast
# 22 "parser.ml"
let yytransl_const = [|
  259 (* TRUE *);
  260 (* FALSE *);
  261 (* MUL *);
  262 (* ADD *);
  263 (* SUB *);
  264 (* DIV *);
  265 (* MOD *);
  266 (* VAR *);
  267 (* EQUALS *);
  268 (* IF *);
  269 (* THEN *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* INT *);
  258 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\000\000"

let yylen = "\002\000\
\002\000\001\000\001\000\001\000\001\000\003\000\003\000\003\000\
\003\000\003\000\004\000\004\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\002\000\003\000\004\000\005\000\000\000\000\000\
\013\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\
\010\000\000\000\000\000"

let yydgoto = "\002\000\
\009\000\010\000"

let yysindex = "\255\255\
\027\255\000\000\000\000\000\000\000\000\000\000\007\255\027\255\
\000\000\019\000\252\254\035\255\027\255\027\255\027\255\027\255\
\027\255\000\000\027\255\027\255\005\255\009\255\250\254\016\255\
\000\000\044\255\044\255"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\008\000\010\000\005\000\001\000\
\000\000\004\000\006\000"

let yygindex = "\000\000\
\000\000\007\000"

let yytablesize = 284
let yytable = "\001\000\
\009\000\016\000\017\000\011\000\008\000\012\000\019\000\006\000\
\011\000\007\000\014\000\015\000\016\000\017\000\012\000\015\000\
\016\000\017\000\018\000\021\000\022\000\023\000\024\000\025\000\
\017\000\026\000\027\000\003\000\004\000\005\000\006\000\000\000\
\000\000\000\000\000\000\000\000\007\000\000\000\008\000\013\000\
\014\000\015\000\016\000\017\000\000\000\000\000\000\000\020\000\
\013\000\014\000\015\000\016\000\017\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\009\000\009\000\009\000\
\009\000\008\000\008\000\008\000\006\000\009\000\007\000\007\000\
\011\000\008\000\012\000\000\000\006\000\000\000\007\000\013\000\
\014\000\015\000\016\000\017\000"

let yycheck = "\001\000\
\000\000\008\001\009\001\000\000\000\000\000\000\011\001\000\000\
\002\001\000\000\006\001\007\001\008\001\009\001\008\000\007\001\
\008\001\009\001\000\000\013\000\014\000\015\000\016\000\017\000\
\009\001\019\000\020\000\001\001\002\001\003\001\004\001\255\255\
\255\255\255\255\255\255\255\255\010\001\255\255\012\001\005\001\
\006\001\007\001\008\001\009\001\255\255\255\255\255\255\013\001\
\005\001\006\001\007\001\008\001\009\001\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\005\001\006\001\007\001\
\008\001\005\001\006\001\007\001\005\001\013\001\005\001\006\001\
\013\001\013\001\013\001\255\255\013\001\255\255\013\001\005\001\
\006\001\007\001\008\001\009\001"

let yynames_const = "\
  TRUE\000\
  FALSE\000\
  MUL\000\
  ADD\000\
  SUB\000\
  DIV\000\
  MOD\000\
  VAR\000\
  EQUALS\000\
  IF\000\
  THEN\000\
  EOF\000\
  "

let yynames_block = "\
  INT\000\
  ID\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 33 "parser.mly"
              ( _1 )
# 179 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 36 "parser.mly"
          ( Int _1 )
# 186 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 37 "parser.mly"
         ( Var _1 )
# 193 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 38 "parser.mly"
           ( Bool true )
# 199 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 39 "parser.mly"
            ( Bool false )
# 205 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 40 "parser.mly"
                      ( BinaryOp(_1, Mul, _3) )
# 213 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 41 "parser.mly"
                      ( BinaryOp(_1, Add, _3) )
# 221 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 42 "parser.mly"
                      ( BinaryOp(_1, Sub, _3) )
# 229 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 43 "parser.mly"
                      ( BinaryOp(_1, Div, _3) )
# 237 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 44 "parser.mly"
                      ( BinaryOp(_1, Mod, _3) )
# 245 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 45 "parser.mly"
                            ( Val(_2, _4) )
# 253 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 46 "parser.mly"
                           ( If(_2, _4) )
# 261 "parser.ml"
               : 'expr))
(* Entry prog *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let prog (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.expr)
