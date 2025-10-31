# Copyright (C) 2018 Sebastian Pipping <sebastian@pipping.org>
# Licensed under the MIT license

GENERATED = htdocs

.PHONY: all
all:
	$(MAKE) -C src

.PHONY: clean
clean:
	rm -rf src/__pycache__
	rm -rf src/cache
	rm -f src/.doit.db
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
