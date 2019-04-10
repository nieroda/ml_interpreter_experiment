{
open Parser
}

let white = [' ' '\t' '\n']+
let digit = ['0'-'9']
let int = '-'? digit+
let letter = ['a'-'z' 'A'-'Z']
let id = letter+

rule read = 
  parse
  | white { read lexbuf }
  | "true" { TRUE }
  | "false" { FALSE }
  | "*" { MUL }
  | "+" { ADD }
  | "-" { SUB }
  | "/" { DIV }
  | "%" { MOD }
  | ";" { END }
  | "var" { VAR }
  | "=" { ASSIGN }
  | "==" { EQUALITY }
  | "if" { IF }
  | "then" { THEN }
  | "(" { LPAREN }
  | ")" { RPAREN }
  | "print" { PRINT }
  | id { ID (Lexing.lexeme lexbuf) }
  | int { INT (int_of_string (Lexing.lexeme lexbuf)) }
  | eof { EOF }