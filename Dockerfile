ARG RUBY_VERSION=2.7
FROM ruby:${RUBY_VERSION}

RUN gem install jekyll bundler
