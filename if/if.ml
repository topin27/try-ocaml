(* 多个语句的if..else.. *)
if 1 = 0 then
  print_endline "IF"
else (
  print_endline "ELSE";
  failwith "else clause"
);;

(* 可变域 *)
type name = {name: string; mutable access_count: int}
let print_name name =
  print_endline ("The name is " ^ name.name);
  name.access_count <- nmae.access_count + 1
 ;;

 (* 引用的实现原理 *)
 type 'a ref = {mutable contents: 'a}
 let r = ref 100