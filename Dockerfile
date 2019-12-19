FROM ruby:2.6.5

ENV APP /opt/history

RUN mkdir -p $APP

WORKDIR $APP

COPY config.ru $APP
COPY lib $APP/lib
COPY Gemfile $APP
COPY history.gemspec $APP

RUN bundle install

CMD ["rackup", "-s", "puma", "-E", "production"]
