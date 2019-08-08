#!/usr/bin/env bash

set -eux

cd src/app

bundle install --local
bundle exec rake
