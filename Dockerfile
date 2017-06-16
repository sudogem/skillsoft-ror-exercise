FROM ruby:2.3

RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    build-essential nodejs \
    && rm -rf /var/lib/apt/lists/*

ENV APP_HOME /app/skillsoft-ror-exercise

RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

ADD . $APP_HOME
RUN bundle install
RUN test -f $APP_HOME/tmp/pids/server.pid && rm -rf $APP_HOME/tmp/pids/server.pid; true
