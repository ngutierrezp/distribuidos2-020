FROM ruby:2.7.1

RUN apt-get install -y apt-utils && apt-get update && apt-get install -y --no-install-recommends nodejs postgresql-client && rm -rf /var/lib/apt/lists/*
#Envmt
ENV DB_HOST=$DB_HOST
ENV DB_USER=$DB_USER
ENV PGPASSWORD=$PGPASSWORD

# Copy application files and install the bundle
WORKDIR /usr/src/app
COPY Gemfile* ./
RUN gem install rails
ENV BUNDLER_VERSION=2.2.0
RUN gem install bundler -v 2.2.0
RUN bundle install
RUN bundle update rails
RUN gem update --system
COPY . .

# Run asset pipeline
RUN bundle exec rake db:create
RUN bundle exec rake db:migrate

EXPOSE 8080
CMD [ "rails", "server", "-p", "8080", "-b", "0.0.0.0"]
