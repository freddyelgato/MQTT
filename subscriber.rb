require 'mqtt'


MQTT::Client.connect('localhost') do |client|
  puts 'Esperando mensajes del tópico "test/topic"...'

  client.get('test/topic') do |topic, message|
    puts "Mensaje recibido en #{topic}: #{message}"
  end
end
