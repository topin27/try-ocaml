all: if

%.cmx: %.ml
	ocamlopt -c $< -o $@

if: if.cmx
	ocamlopt -o $@ $^

clean:
	-rm -rf *.cmx *.o *.cmi *.cmo if

.PHONY: all clean
