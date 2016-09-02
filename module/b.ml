open Extensions

let () = A.hello ()

let () = 
  Example.Hello.hello ();
  Example.goodbye ()

let f l = 
  match l with
  | [] -> None
  | hd :: tl -> Some hd
;;

List.optmap f []
