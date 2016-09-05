all: errmsg

%.cmx: %.ml
	ocamlopt -c $< -o $@

errmsg: errmsg.cmx
	ocamlopt -o $@ $^

clean:
	-rm -rf *.cmx *.o *.cmi *.cmo errmsg

.PHONY: all clean
