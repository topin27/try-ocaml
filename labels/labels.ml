(* 互递归声明方式 *)
let rec even n = 
  match n with
  | 0 -> true
  | x -> odd (x - 1)
and odd n = 
  match n with
  | 0 -> false
  | x -> even (x - 1)

(* 
 * ?foo参数只在参数声明和调用时想去掉option包装的时候有用，形如：
 * let f ?arg1 () = 
 *   ...
 * 和：
 * let open_application ?width ?height () =
 *   open_window ~title:"My Application" ?width ?height;;
 *)