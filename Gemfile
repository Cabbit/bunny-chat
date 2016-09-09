# frozen_string_literal: true
ruby '2.3.1'
source 'https://rubygems.org'

gem 'faye-websocket'
gem 'rubocop', require: false
gem 'simplecov', require: false, group: :test
gem 'configatron'
gem 'puma'
gem 'permessage_deflate'

group :development do
  gem 'pry'
  gem 'pry-remote'
end

group :test do
  gem 'rack-test', require: 'rack/test'
  gem 'database_cleaner'
end
