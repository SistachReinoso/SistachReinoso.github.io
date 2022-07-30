RUBY_VERSION = 2.7

help:
	@echo local: run container with jekyll
	@echo test:  run like gitlab server
	@echo date:  helpful when make a new post

local:
	rm -rf _site
	docker volume create ruby-libs
	docker run \
		-ti \
		--init \
		--rm \
		--entrypoint /bin/bash \
		--volume=$(shell pwd):/tmp/jekyll \
		--volume=ruby-libs:/usr/local/bundle \
		--workdir=/tmp/jekyll \
		--user=$(shell id -u) \
		--network host \
		ruby:${RUBY_VERSION} \
		-c 'bundle install && bundle exec jekyll serve --incremental'

test:
	gitlab-runner exec docker pages

date:
	date '+%F %X %z'

.PHONY: help local test date
