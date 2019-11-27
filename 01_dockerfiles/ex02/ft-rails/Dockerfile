# FROM ruby

# RUN apt-get update -y && \
#     apt-get upgrade -y && \
# 	apt-get install nodejs yarn -y && \
# 	gem install rails bundler

# ONBUILD WORKDIR /opt

# ONBUILD RUN rails new app
# ONBUILD WORKDIR /opt/app
# ONBUILD RUN bundle install
# ONBUILD RUN rails generate migration CreateProducts name:string
# ONBUILD RUN rake db:migrate

FROM ruby
RUN apt-get update -y && apt-get install -y build-essential libpq-dev nodejs sqlite3
ONBUILD COPY app /opt/app
ONBUILD WORKDIR /opt/app
ONBUILD EXPOSE 3000
ONBUILD RUN bundle update rake
ONBUILD RUN bundle install
ONBUILD RUN rake db:migrate