# /usr/bin/env make
# Copyright (C) 2018 Sebastian Pipping <sebastian@pipping.org>
# Licensed under the MIT license

GENERATED = htdocs

.PHONY: all
all:
	$(MAKE) -C src
	./optimize-png-files.sh htdocs/assets/css/images/

.PHONY: clean
clean:
	git checkout HEAD -- $(GENERATED)

.PHONY: require-clean-git
require-clean-git:
	git diff --quiet
	git diff --cached --quiet

.PHONY: sync
sync:
	$(MAKE) clean require-clean-git all
	git add -- $(GENERATED)
	git commit \
		-m 'Sync generated files ("make sync")'
