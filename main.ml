open Ast 


(* based off example from https://www.cs.cornell.edu/courses/cs3110/2019sp/textbook/modules/modular_programming.html *)

let parse s =
    let lexbuf = Lexing.from_string s in 
    let ast = Parser.prog Lexer.read lexbuf in
    ast 
    ;;