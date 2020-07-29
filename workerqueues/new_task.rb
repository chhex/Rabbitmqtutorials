#!/usr/bin/env ruby
require_relative '../lib/rabbit'

connection = Rabbit::ConnectionWrapper.new().connection
connection.start

channel = connection.create_channel
queue = channel.queue('task_queue', durable: true)

message = ARGV.empty? ? 'Hello World!' : ARGV.join(' ')

queue.publish(message, persistent: true)
puts " [x] Sent #{message}"

connection.close
