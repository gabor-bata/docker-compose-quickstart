FROM ruby:2.4.1-alpine
ADD . /code
WORKDIR /code
RUN gem install redis
RUN gem install sinatra
CMD ["ruby", "app.rb"]
