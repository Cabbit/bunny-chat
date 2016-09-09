# frozen_string_literal: true
require './config/application'

require 'rubygems'
require 'bundler/setup'
require File.expand_path('../app', __FILE__)

Faye::WebSocket.load_adapter('puma')

run App
