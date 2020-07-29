#!/usr/bin/env ruby
require_relative '../lib/rabbit'

STDOUT.sync = true
connection = Rabbit::ConnectionWrapper.new().connection
channel = connection.create_channel
queue = channel.queue('hello')
channel.default_exchange.publish('Hello World!', routing_key: queue.name)
puts " [x] Sent 'Hello World!'"
connection.close
