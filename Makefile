.PHONY: all clean

all:
	crystal deps
	mkdir -p bin
	crystal build --release example/search_items.cr -o bin/search_items
	crystal spec

clean:
	rm -rf .crystal
	rm -rf .shards
	rm -rf .deps
	rm -rf libs
