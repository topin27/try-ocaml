(* List *)
let l = [1; 2; 3]

(* tuple *)
let t = (3, "hello", 'x')

(* record *)
type pair_of_ints_t = {
  a: int; b: int
}
let p = { a = 3; b = 5 }

(* 变体 *)
type foo_t = 
  | Nothing
  | Int of int
  | Pair of int * int
  | String of string
;;
let f = Nothing
let f = Int 3
let f = Pair (4, 5)
let f = String "hello"

type binary_tree_t = 
  | Leaf of int
  | Tree of binary_tree_t * binary_tree_t
;;
let bt = Leaf 3
let bt = Tree (Leaf 3, Leaf 4)

type 'a new_binary_tree_t = 
  | Leaf of 'a
  | Tree of 'a new_binary_tree_t * 'a new_binary_tree_t
;;
let nbt = Leaf "hello"
let nbt = Leaf 3.0

(* 数据类型的模式匹配 *)
type expr =
  | Plus of expr * expr        (* means a + b *)
  | Minus of expr * expr       (* means a - b *)
  | Times of expr * expr       (* means a * b *)
  | Divide of expr * expr      (* means a / b *)
  | Value of string            (* "x", "y", "n", etc. *)
;;
let e = Times (Value "n", Plus (Value "x", Value "y"))  (* n*(x+y) *)
let rec to_string e =
  match e with
  | Plus (left, right) ->
    "(" ^ to_string left ^ " + " ^ to_string right ^ ")"
  | Minus (left, right) ->
    "(" ^ to_string left ^ " - " ^ to_string right ^ ")"
  | Times (left, right) ->
    "(" ^ to_string left ^ " * " ^ to_string right ^ ")"
  | Divide (left, right) ->
    "(" ^ to_string left ^ " / " ^ to_string right ^ ")"
  | Value v -> v
;;
let print_expr e = 
  print_endline (to_string e)
;;
let () = print_expr (Times (Value "n", Plus (Value "x", Value "y")))
