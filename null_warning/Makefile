all: test

%.cmx: %.ml
	ocamlopt -c $< -o $@

test: test.cmx
	ocamlopt -o $@ $^

clean:
	-rm -rf *.cmx *.o *.cmi *.cmo test

.PHONY: all clean
