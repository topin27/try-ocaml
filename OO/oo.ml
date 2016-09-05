class stack_of_ints = 
  object (self)
    val mutable the_list = ([]: int list)   (* []的类型是'a list，因此这里需要指定 *)
    method push x = 
      the_list <- x :: the_list
    method pop = 
      let result = List.hd the_list in
      the_list <- List.tl the_list;
      result
    method peek = 
      List.hd the_list
    method size = 
      List.length the_list
  end
let s = new stack_of_ints;;
for i = 1 to 10 do
  s#push i
done;;
while s#size > 0 do
  Printf.printf "Popped %d off the stack.\n" s#pop
done;;

(* 多态 *)
class ['a] stack = 
  object (self)
    val mutable list = ([]: 'a list)
    method push x = 
      list <- x :: list
    method pop = 
      let result = List.hd list in
      list <- List.tl list;
      result
    method peek = 
      List.hd list
    method size = 
      List.length list
  end;;

(* 虚基类 *)
class virtual widget (name: string) = 
  object (self)
    method get_name = 
      name
    method virtual repaint: unit
  end;;
class virtual container name = 
  object (self)
    inherit widget name
    val mutable widgets = ([]: widget list)
    method add w = 
      widgets <- w :: widgets
    method get_widgets = 
      widgets
    method repaint = 
      List.iter (fun w -> w#repaint) widgets
  end;;
type button_state = 
  | Released
  | Pressed
;;
class button ?callback name = 
  object (self)
    inherit container name as super
    val mutable state = Released
    method press = 
      state <- Pressed;
      match callback with
      | None -> ()
      | Some f -> f ()
    method release =
      state <- Released
    method repaint = 
      super#repaint;
      print_endline ("Button being repainted, state is " ^
                     (match state with
                      | Pressed -> "Pressed"
                      | Released -> "Released"))
  end;;
let wl = ([]: widget list)
let b = new button ~callback:(fun () -> print_endline "Ouch!") "button";;
b#repaint;;
let wl = (b :> widget) :: wl  (* let wl = b :: wl也是无法推导 *)

(* 立即对象，不用类定义就实例化 *)
let o = 
  object
    val mutable n = 0
    method incr = 
      n <- n + 1
    method get = n
  end;;

(* 当一个类型定义的时候，两个同名的类类型和对象类型被创建 *)
class t = 
  object 
    val x = 0
    method get = x
  end
;;
let x = object method get = 123 end;;
let l = [new t; x]  (* t的实例也可以和其他实例或者立即对象混在一起，只要它们的
                      类型（公共方法）一样即可*)
let y = object method get = 80 method special = "hello" end
let l = [x; (y :> t)] (* 有共同子类的实例混在一起也是可以的，这时候需要转型 *)
