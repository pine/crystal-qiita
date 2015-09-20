.PHONY: all clean

all:
	crystal deps
	crystal spec

clean:
	rm -rf .crystal
	rm -rf .shards
	rm -rf .deps
	rm -rf libs
