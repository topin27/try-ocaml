all: labels

%.cmx: %.ml
	ocamlopt -c $< -o $@

labels: labels.cmx
	ocamlopt -o $@ $^

clean:
	-rm -rf *.cmx *.o *.cmi *.cmo labels

.PHONY: all clean
