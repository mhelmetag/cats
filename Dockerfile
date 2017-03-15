FROM ruby:2.4.0

RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       libpq-dev \
                       nodejs \
                       imagemagick

RUN mkdir /cats
WORKDIR /cats

COPY Gemfile /cats/Gemfile
COPY Gemfile.lock /cats/Gemfile.lock
RUN bundle install

COPY . /cats
