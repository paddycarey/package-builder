help:
	@echo "build - Build debian package from python package"

build:
ifeq ($(strip $(package)),)
	@echo "package= argument is required"
	exit 1
endif
	docker build -t="package-builder" .
	docker run -t -i --rm -v $(CURDIR)/packages:/packages -u $(shell id -u $$USER) package-builder run.sh $(package)
