
.PHONY: build
build:
	@bash scripts/build.sh

.PHONY: lint
lint:
	@bash scripts/lint.sh

.PHONY: locale
locale:
	@bash scripts/extract-msgs-to-pofiles.sh

.PHONY: test
test:
	@bash scripts/test.sh
