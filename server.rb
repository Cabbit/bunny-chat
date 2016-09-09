# frozen_string_literal: true
require 'rubygems'
require 'bundler/setup'
require 'rack/content_length'
require 'rack/chunked'

require File.expand_path('../app', __FILE__)
Faye::WebSocket.load_adapter(engine)

events = Puma::Events.new($stdout, $stderr)
binder = Puma::Binder.new(events)
binder.parse(["tcp://0.0.0.0:#{port}"], App)
server = Puma::Server.new(App, events)
server.binder = binder
server.run.join
