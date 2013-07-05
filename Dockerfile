FROM ubuntu
MAINTAINER Kimbro Staken

RUN apt-get update
RUN apt-get install -y git ruby1.9.1 rubygems1.9.1 ruby1.9.1-dev build-essential 
RUN gem install bundler
ADD . /var/www
RUN cd /var/www ; bundle install
RUN cd /var/www ; rake install