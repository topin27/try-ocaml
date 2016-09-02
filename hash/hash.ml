let my_hash = Hashtbl.create 123456;;

Hashtbl.add my_hash "h" "hello";
Hashtbl.add my_hash "h" "hi";
Hashtbl.add my_hash "w" "world";

print_endline (Hashtbl.find my_hash "h");;  (* only return "hi" *)

List.iter print_endline (Hashtbl.find_all my_hash "h");;

Hashtbl.remove my_hash "h";;
print_endline (Hashtbl.find my_hash "h");;  (* return "hello", the "hi" is hidden by "hello" *)

Hashtbl.mem my_hash "h";;
