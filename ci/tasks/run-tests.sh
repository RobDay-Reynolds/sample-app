#!/usr/bin/env bash

set -eux

cd src/app

gem install bundler

bundle install --local
bundle exec rake
