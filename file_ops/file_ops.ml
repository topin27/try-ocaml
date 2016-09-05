open Printf

let file = "example.dat"
let message = "Hello!"

let () = 
  let oc = open_out file in
  fprintf oc "%s\n" message;
  close_out oc;

  let ic = open_in file in
  try
    let line = input_line ic in
    print_endline line;
    flush stdout;
    close_in ic

  with e -> 
    close_in_noerr ic;
    raise e
