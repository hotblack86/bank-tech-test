# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

ruby '2.5.3'

group :test, :development do
  gem 'rspec'
  gem 'rubocop', '0.56.0'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
  gem 'timecop'
end
