# frozen_string_literal: true
require 'ostruct'
require 'pathname'
require 'yaml'
require 'faye/websocket'

# Load environment settings
Config = OpenStruct.new
Config.env = ENV['RACK_ENV'] ? ENV['RACK_ENV'].to_sym : :development
Config.root = Pathname.new(File.expand_path('../..', __FILE__))

# Load dependencies
require 'bundler'
Bundler.require(:default, Config.env)
