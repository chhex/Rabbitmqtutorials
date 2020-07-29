#!/usr/bin/env ruby
require_relative '../lib/rabbit'

connection = Rabbit::ConnectionWrapper.new().connection
channel = connection.create_channel

exchange = channel.fanout('logs')

message = ARGV.empty? ? 'Hello World!' : ARGV.join(' ')

exchange.publish(message)
puts " [x] Sent #{message}"

connection.close
