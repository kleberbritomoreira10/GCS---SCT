#!/bin/bash

apt-get -y update
apt-get -y install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

apt-add-repository -y ppa:brightbox/ruby-ng >/dev/null 2>&1
apt-get -y update >/dev/null 2>&1
apt-get -y install libgmp-dev
apt-get -y install 'development tools' build-essential

apt-get -y install rubygems

install Ruby ruby2.3 ruby2.3-dev

gem install bundler


curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -

gem install rails

apt-get install Git git
apt-get install -y Ruby ruby2.3 ruby2.3-dev

update-alternatives --set ruby /usr/bin/ruby2.3 >/dev/null 2>&1
update-alternatives --set gem /usr/bin/gem2.3 >/dev/null 2>&1

# rbenv install
# rbenv rehash

apt-get install -y libxml2 libxml2-dev libxslt1-dev

# apt-get -y install mysql-server mysql-client libmysqlclient-dev


# bundle install
# rake db:migrate
# rake db:seed
# rspec
# rails s