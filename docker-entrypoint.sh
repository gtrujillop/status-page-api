#!/bin/sh

rm -f tmp/pids/server.pid
bundle exec puma -C config/puma.rb
