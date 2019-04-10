open Ast 

(* based off example from https://www.cs.cornell.edu/courses/cs3110/2019sp/textbook/modules/modular_programming.html *)

let parse s = 
    Lexing.from_string s |> Parser.prog Lexer.read 

let getTok op = 
    match op with 
    | Add -> "+"
    | Sub -> "-"
    | Mul -> "*"
    | Div -> "/"
    | Mod -> "%"
;;

let rec dumpAST ast indent = 
    let tab = "     " in 
    match ast with 
    | Ast(e1, e2) ->
        dumpAST e1 tab; 
        dumpAST e2 tab;
    | Var (x) -> print_endline (indent ^ "Var: " ^ x)
    | Int (i) -> print_endline (indent ^ "Int: " ^ (string_of_int i))
    | Bool (b) -> print_endline (indent ^ "Bool: " ^ (string_of_bool b))
    | BinaryOp (e1, op, e2) -> 
        print_endline (indent ^ "BinaryOp: " ^ (getTok op)); 
        dumpAST e1 (indent ^ tab); 
        dumpAST e2 (indent ^ tab);
    | If (e1, e2) ->
        print_endline (indent ^ "IfStmt:");
        dumpAST e1 (indent ^ tab);
        dumpAST e2 (indent ^ tab);
    | Val (s, e1) -> 
        print_endline (indent ^ "Val: " ^ s ^ " = "); 
        dumpAST e1 (indent ^ tab);
    | Print (e1) ->
        print_endline (indent ^ "Print: ");
        dumpAST e1 (indent ^ tab)
    ;;

(* let rec eval ast = 
 match ast with 
 | Var(v) -> 
 | Int(i) -> 
 | Bool(b) ->
 | BinaryOp (e1, op, e2) ->
 | If (e1, e2) ->
 | Val (s, e1) ->
 | Print (e1) ->
 | Ast (e1, e2) -> *)

let () =
    let ast = parse 
      "var foo = 1;
       var bar = 2;
       var baz = 3;" in 
    dumpAST ast "";;
    (* let _ = parse "var sum = 5 - 4;" in 
    print_endline "done"
    ;; *)


    (* ocamlbuild -use-ocamlfind main.byte && ./main.byte  *)