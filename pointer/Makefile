all: pointer

%.cmx: %.ml
	ocamlopt -c $< -o $@

pointer: pointer.cmx
	ocamlopt -o $@ $^

clean:
	-rm -rf *.cmx *.o *.cmi *.cmo pointer

.PHONY: all clean
