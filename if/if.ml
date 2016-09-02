(* 多个语句的if..else.. *)
if 1 = 0 then
  print_endline "IF"
else (
  print_endline "ELSE";
  failwith "else clause"
);;
