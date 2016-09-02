module MyUsers = Map.Make(String)

let m = MyUsers.empty
let m = MyUsers.add "fred" "teest" m
let m = MyUsers.add "pete" "linux" m

let print_users key password = 
  print_string(key ^ " " ^ password ^ "\n")
;;

MyUsers.iter print_users m;;
print_endline (MyUsers.find "fred" m)
