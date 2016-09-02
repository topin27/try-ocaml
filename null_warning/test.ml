open Printf;;

assert (Sys.os_type <> "Win32");;

match Sys.os_type with
  | "Unix" | "Cygwin" -> print_endline "unix"
  | "Win32" -> print_endline "windows"
  | "MacOS" -> print_endline "macos"
  | _ -> failwith "this system is not supported"
;;

prerr_endline "This will be outputed in stderr";;
printf "%s world.\n" "hello"
