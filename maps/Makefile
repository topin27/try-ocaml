all: maps

%.cmx: %.ml
	ocamlopt -c $< -o $@

maps: maps.cmx
	ocamlopt -o $@ $^

clean:
	-rm -rf *.cmx *.o *.cmi *.cmo maps

.PHONY: all clean
