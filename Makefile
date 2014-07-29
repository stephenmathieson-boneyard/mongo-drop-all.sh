
PREFIX ?= /usr/local
BIN ?= mongo-drop-all

install:
	cp -f mongo-drop-all.sh $(PREFIX)/bin/$(BIN)

uninstall:
	rm -f $(PREFIX)/bin/$(BIN)

.PHONY: install uninstall
