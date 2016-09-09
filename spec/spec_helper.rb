# frozen_string_literal: true
require 'simplecov'
SimpleCov.start do
  add_filter '/config/'
  add_filter '/db/'
  add_filter '/spec/'
  add_group 'Models',      'app/models'
  add_group 'Helpers',     'app/helpers'
  add_group 'Lib',         'lib'
end

ENV['RACK_ENV'] = 'test'
require 'pry'
require 'minitest/autorun'

require_relative '../config/application'
require 'mocha/mini_test'
require 'minitest-spec-context'
