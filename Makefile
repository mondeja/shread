
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

.PHONY: run
run:
	@python3 -m http.server 4000 -b 127.0.0.1 -d public
