RUBY_VERSION = 2.7

all: image

image:
	docker build \
		--tag ruby-jekyll:${RUBY_VERSION} \
		--build-arg RUBY_VERSION=${RUBY_VERSION} \
		.

.PHONY: all image
