{
open Parser
}

let white = [' ' '\t']+
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
  | "var" { VAR }
  | "=" { EQUALS }
  | "if" { IF }
  | "then" { THEN }
  | id { ID (Lexing.lexeme lexbuf) }
  | int { INT (int_of_string (Lexing.lexeme lexbuf)) }
  | eof { EOF }