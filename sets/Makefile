all: sets

%.cmx: %.ml
	ocamlopt -c $< -o $@

sets: sets.cmx
	ocamlopt -o $@ $^

clean:
	-rm -rf *.cmx *.o *.cmi *.cmo sets

.PHONY: all clean
