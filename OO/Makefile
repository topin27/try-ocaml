all: oo

%.cmx: %.ml
	ocamlopt -c $< -o $@

oo: oo.cmx
	ocamlopt -o $@ $^

clean:
	-rm -rf *.cmx *.o *.cmi *.cmo oo

.PHONY: all clean
