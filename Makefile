
.PHONY: build
build:
	@bash scripts/build.sh

.PHONY: lint
lint:
	@bash scripts/lint.sh

.PHONY: locale
locale:
	@bash scripts/extract-strings-to-po-files.sh

.PHONY: test
test:
	@bash scripts/test.sh
