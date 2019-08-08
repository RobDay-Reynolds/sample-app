#!/usr/bin/env bash

set -eux

cd src/app

gem install bundler
apt-get update
apt-get install -y nodejs

bundle install
bundle exec rake
