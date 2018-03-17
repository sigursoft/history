FROM ruby:2.5

ENV APP /opt/history

RUN mkdir -p $APP

WORKDIR $APP

ADD config.ru $APP
ADD lib $APP/lib
ADD Gemfile $APP
ADD history.gemspec $APP

RUN bundle install

CMD ["rackup", "-s", "puma", "-E", "production"]