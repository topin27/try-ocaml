module List = struct 
  include List
  let rec optmap f = function
    | [] -> []
    | hd :: tl -> 
      match f hd with
      | None -> optmap f tl
      | Some x -> x :: optmap f tl
end
