(* Partial function applications & Currying *)
let plus a b = 
  a + b
;;
let f = plus 2
let () = Printf.printf "%d\n" (f 10)
let () = Printf.printf "%d\n" (f 5)

(* 惰性求值，OCaml默认是非惰性的 *)
let give_me_a_three _ = 3
let three = give_me_a_three (1/0) (* 在惰性求值中，这里是正确的，因为函数并没有
                                     使用参数，因此不会出发参数计算 *)
(* 在OCaml中如果要使用惰性求值，需要使用Lazy模块 *)
let lazy_expr = lazy (1/0)
let three = give_me_a_three lazy_expr
;;
Lazy.force lazy_expr  (* 强制求值 *)

(* 
 * Boxed and unboxed:
 * 一个boxed的对象就像用C中用malloc分配在了堆上（C++中则是new），并且被指针引用。
 * 在Java中，int是unboxed而Integer是boxed的。Ocaml中，基本类型是unboxed的。
 *)
