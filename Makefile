.PHONY: default all install build test clean

default: all
all: clean install build test

install:
	crystal deps

build:
	mkdir -p bin
	crystal build --release example/search_items.cr -o bin/search_items

test:
	crystal spec -v

clean:
	rm -rf .crystal
	rm -rf .shards
	rm -rf .deps
	rm -rf libs
