# publisher.rb
require 'mqtt'

MQTT::Client.connect('localhost') do |client|
  client.publish('test/topic', '¡Hello Ruby with MQTT!')
  puts 'Message publicated in test/topic'
end
