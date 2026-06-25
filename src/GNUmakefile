# Copyright (C) 2018 Sebastian Pipping <sebastian@pipping.org>
# Licensed under the MIT license

GENERATED = ../htdocs

.PHONY: all
all: files/images/qrcode-spende.png
	rm -rf $(GENERATED)
	nikola build -a

files/images/qrcode-spende.png: qrcode-spende.txt
	qrencode -t PNG -r $< -o $@
	optipng -o6 -strip all $@

.PHONY: clean
clean:
	rm -rf __pycache__
	rm -rf cache
	rm -f .doit.db
	rm -f plugins/__init__.py

.PHONY: sync
sync:
	$(MAKE) -C .. sync
