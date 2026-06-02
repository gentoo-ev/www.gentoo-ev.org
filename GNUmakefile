# Copyright (C) 2018 Sebastian Pipping <sebastian@pipping.org>
# Licensed under the MIT license

GENERATED = htdocs

.PHONY: all
all:
	$(MAKE) -C src

.PHONY: clean
clean:
	$(MAKE) -C src clean

.PHONY: require-clean-git
require-clean-git:
	git diff --quiet -- $(addprefix ':(exclude)',$(GENERATED))
	git diff --cached --quiet -- $(addprefix ':(exclude)',$(GENERATED))

.PHONY: sync
sync:
	$(MAKE) require-clean-git all
	git add -- $(GENERATED)
	git commit \
		-m 'Sync generated files ("make sync")'
