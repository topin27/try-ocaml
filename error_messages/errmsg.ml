(*
let x = ref None  (* This will trigger error message during the compilation *)
*)
let x: string option ref = ref None (* This is ok *)
