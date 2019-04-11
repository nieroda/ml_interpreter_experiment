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

let isValue = function 
 | Int _ | Bool _ -> true 
 | Var _ | BinaryOp _ (*| If _ | Val _ | Ast _ | Print _*) -> false 

let evalBinOp op e1 e2 = 
  match op, e1, e2 with
  | Add, Int lhs, Int rhs -> Int (lhs + rhs)
  | Sub, Int lhs, Int rhs -> Int (lhs - rhs)
  | Mul, Int lhs, Int rhs -> Int (lhs * rhs)
  | Div, Int lhs, Int rhs -> Int (lhs / rhs)
  | Mod, Int lhs, Int rhs -> Int (lhs mod rhs)
  | _ -> failwith "No Match"

let rec dumpAST ast indent = 
  let tab = "     " in
  match ast with 
  | Var s -> print_endline (indent ^ "Var: " ^ s)
  | Int i -> print_endline (indent ^ (string_of_int i)) 
  | Bool b -> print_endline (indent ^ (string_of_bool b))
  | BinaryOp (e1, op, e2) ->
    print_endline (indent ^ "BinaryOp:" ^ (getTok op));
    dumpAST e1 (tab ^ indent);
    dumpAST e2 (tab ^ indent);
;;
(* let rec eval ast = 
 match ast with 
 | BinaryOp (e1, op, e2) when isValue e1 && isValue e2 -> evalBinOp op e1 e2
 | BinaryOp (e1, op, e2) when isValue e1 -> BinaryOp(e1, op, eval e2)
 | BinaryOp (e1, op, e2) -> BinaryOp(eval e1, op, eval e2)  
 | Var _ | Int _ | Bool _ -> failwith "Not able to evaluate";; *)
 (* | Int(i) -> 
 | Bool(b) ->
 | If (e1, e2) ->
 | Val (s, e1) ->
 | Print (e1) ->
 | Ast (e1, e2) -> *)

let () =
    let ast = parse 
      "4 * 3 + 3 % 36 + 24 + 54 + 23" in 
      dumpAST ast "";;
       (* match eval ast with 
       | Int i -> print_endline (string_of_int i)
       | Bool b -> print_endline (string_of_bool b)
      ;; *)
    (* dumpAST ast "";; *)
    (* let _ = parse "var sum = 5 - 4;" in 
    print_endline "done"
    ;; *)


    (* ocamlbuild -use-ocamlfind main.byte && ./main.byte  *)