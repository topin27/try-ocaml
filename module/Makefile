all: hello

# %.cmx: %.ml %.cmi
# 	ocamlopt -c $< -o $@
# 
# %.cmi: %.mli
# 	ocamlc -c $< -o $@

a.cmx: a.ml a.cmi
	ocamlopt -c $< -o $@

a.cmi: a.mli
	ocamlc -c $< -o $@

b.cmx: b.ml
	ocamlopt -c $< -o $@

example.cmx: example.ml
	ocamlopt -c $< -o $@

extensions.cmx: extensions.ml
	ocamlopt -c $< -o $@

hello: a.cmx example.cmx extensions.cmx b.cmx
	ocamlopt -o $@ $^

clean:
	-rm -rf *.cmx *.o *.cmi *.cmo hello

.PHONY: all clean
