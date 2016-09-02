type list_t = 
  | Nil
  | Cons of cell and 
    cell = { mutable hd: int; tl: list_t }  (* 使用了可变域 *)
;;

type 'a pointer_t =
  | Null
  | Pointer of 'a ref
;;
let (!^) = function
  | Null -> invalid_arg "Attempt to dereference the null pointer"
  | Pointer r -> !r
;;
let (^:=) p v =
  match p with
  | Null -> invalid_arg "Attempt to assign the null pointer"
  | Pointer r -> r := v
;;
let new_pointer x = 
  Pointer (ref x)
;;
let p = new_pointer 0;;
p ^:= 1;;
!^p;;
