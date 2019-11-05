FROM ruby
RUN apt-get update -y && apt-get install -y build-essential libpq-dev nodejs sqlite3
ONBUILD COPY app /opt/app
ONBUILD WORKDIR /opt/app
ONBUILD EXPOSE 3000
ONBUILD RUN bundle update rake
ONBUILD RUN bundle install
ONBUILD RUN rake db:migrate
#ONBUILD RUN rake db:seed

