FROM ruby:2.6.5-slim-stretch

ENV APP_ROOT /app
RUN apt-get update
RUN apt-get install -y build-essential ruby-dev
RUN gem install bundler
COPY ./app $APP_ROOT
WORKDIR $APP_ROOT
EXPOSE 5000
RUN bundler
