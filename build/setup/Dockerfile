ARG RUBY_VERSION=2.7
FROM ruby:${RUBY_VERSION}

RUN gem install jekyll bundler

RUN echo "#!/bin/bash"                                            > /setup-doker.sh \
 && echo "bundle config set --local path '/tmp/jekyll/build/gem'" >>/setup-doker.sh \
 && echo "bundle exec jekyll serve --incremental"                 >>/setup-doker.sh \
 && chmod +x                                                        /setup-doker.sh
