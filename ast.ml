type bop = 
    | Add
    | Sub
    | Mul
    | Div
    | Mod 

type expr = 
    | Var of string 
    | Int of int 
    | Bool of bool 
    | BinaryOp of expr * bop * expr 
    | If of expr * expr 
    | Val of string * expr 
