# frozen_string_literal: true
workers Integer(ENV['WEB_CONCURRENCY'] || 5)
threads_count = Integer(ENV['MAX_THREADS'] || 2)
threads threads_count, threads_count

preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 5000
environment ENV['RACK_ENV'] || 'development'

on_worker_boot do
  # ActiveRecord::Base.establish_connection
end
