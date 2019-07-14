.PHONY=install
PREFIX ?= /usr/local/bin/
install:
	install templater.sh $(PREFIX)/templater
