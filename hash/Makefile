all: hash

%.cmx: %.ml
	ocamlopt -c $< -o $@

hash: hash.cmx
	ocamlopt -o $@ $^

clean:
	-rm -rf *.cmx *.o *.cmi *.cmo hash

.PHONY: all clean
