module SS = Set.Make(String)

let s = SS.empty
let ss = SS.singleton "hello"

let s = List.fold_right SS.add ["hello"; "world"; "real"] s
let ss = List.fold_right SS.add ["real"; "world"] ss

let print_set s = 
  SS.iter print_endline s
;;

let my_filter str = 
  String.length str <= 5
;;

let ss2 = SS.filter my_filter ss
let () = print_set ss2

let ss2 = SS.filter (fun str -> String.length str <= 5) s
let () = print_set ss2
