(** 
 * 大多数情况下子模块应将接口与实现分离，形如：
 * module type Hello_type: sig
 *   val hello: unit -> unit
 * end
 *
 * module Hello: Hello_type = struct
 *   ...
 * end
 **)
module Hello: sig
  val hello: unit -> unit
end = struct 
  let message = "Hello"
  let hello () = print_endline message
end

let goodbye () = print_endline "Goodbye"

let hello_goodbye () = 
  Hello.hello ();
  goodbye ()
