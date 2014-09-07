FROM debian:wheezy
MAINTAINER Paddy Carey <paddy@wackwack.co.uk>

# empty file that when touched will force a full rebuild of the container
ADD assets/force_rebuild /force_rebuild

# no tty
ENV DEBIAN_FRONTEND noninteractive

# get up to date
RUN apt-get update --fix-missing
RUN apt-get upgrade -y

# install packages from apt
RUN apt-get install -y build-essential python-pip ruby-dev gcc
RUN gem install fpm

ADD assets/run.sh /usr/local/bin/run.sh
RUN chmod a+x /usr/local/bin/run.sh

# default run command
CMD bash
