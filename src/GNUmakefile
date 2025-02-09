# Copyright (C) 2018 Sebastian Pipping <sebastian@pipping.org>
# Licensed under the MIT license

.PHONY: all
all: ../htdocs/images/qrcode-spende.png
	nikola build -a

../htdocs/images/qrcode-spende.png: qrcode-spende.txt
	qrencode -t PNG -r $< -o $@

.PHONY: clean
clean:
	$(MAKE) -C .. clean

.PHONY: sync
sync:
	$(MAKE) -C .. sync
