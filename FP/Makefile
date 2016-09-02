all: fp

%.cmx: %.ml
	ocamlopt -c $< -o $@

fp: fp.cmx
	ocamlopt -o $@ $^

clean:
	-rm -rf *.cmx *.o *.cmi *.cmo fp

.PHONY: all clean
