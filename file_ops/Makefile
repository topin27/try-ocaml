all: file_ops

%.cmx: %.ml
	ocamlopt -c $< -o $@

file_ops: file_ops.cmx
	ocamlopt -o $@ $^

clean:
	-rm -rf *.cmx *.o *.cmi *.cmo file_ops

.PHONY: all clean
