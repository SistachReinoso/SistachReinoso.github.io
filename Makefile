RUBY_VERSION = 2.7
IMAGE = ruby-jekyll:${RUBY_VERSION}
CONTAINER = ruby-jekyll

all:
	@echo TODO

local:
	@echo rm -rf _site
	@echo bundle config set --local path '/tmp/jekyll/build/gem'
	@echo bundle exec jekyll serve --incremental
	docker run \
		-ti \
		--init \
		--rm \
		--entrypoint /bin/bash \
		--volume=$(shell pwd):/tmp/jekyll \
		--workdir=/tmp/jekyll \
		--user=$(shell id -u) \
		--network host \
		${IMAGE}

image:
	cd build/setup && \
	docker build \
		--tag ${IMAGE} \
		--build-arg RUBY_VERSION=${RUBY_VERSION} \
		.

test:
	gitlab-runner exec docker pages


.PHONY: all image
