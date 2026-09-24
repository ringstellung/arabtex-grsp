SHELL := /bin/sh

PACKAGE := arabtex-granada
BUILD_ROOT := build/ctan
DIST_DIR := dist
ARCHIVE := $(DIST_DIR)/$(PACKAGE).zip
PACKAGE_FILES := arabtex-granada.sty README.md CHANGELOG.md MANIFEST Makefile lppl.txt

.PHONY: all build ctan clean

all: build

# Build the ZIP that can be submitted through the CTAN upload form.
build: ctan

ctan:
	@command -v zip >/dev/null || { echo "error: zip is required" >&2; exit 1; }
	@command -v unzip >/dev/null || { echo "error: unzip is required" >&2; exit 1; }
	rm -rf "$(BUILD_ROOT)/$(PACKAGE)" "$(ARCHIVE)"
	mkdir -p "$(BUILD_ROOT)/$(PACKAGE)/examples" "$(DIST_DIR)"
	cp $(PACKAGE_FILES) "$(BUILD_ROOT)/$(PACKAGE)/"
	cp examples/arabtex-granada-example.tex "$(BUILD_ROOT)/$(PACKAGE)/examples/"
	cp -R vendor "$(BUILD_ROOT)/$(PACKAGE)/"
	cd "$(BUILD_ROOT)" && zip -q -r "../../$(ARCHIVE)" "$(PACKAGE)"
	unzip -tq "$(ARCHIVE)"
	@echo "Created $(ARCHIVE)"

clean:
	rm -rf build dist
