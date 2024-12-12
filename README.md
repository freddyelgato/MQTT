# MQTT Service

This project is a simple MQTT service implemented in Ruby and Docker. MQTT (Message Queuing Telemetry Transport) is a lightweight messaging protocol for small sensors and mobile devices, optimized for high-latency or unreliable networks.

## Features

- **MQTT Communication**: Publish and subscribe to topics for real-time messaging.
- **Dockerized Deployment**: Easily run the application in a containerized environment for scalability and portability.
- **Ease of Integration**: Simple setup with minimal configuration.
- **Efficient Messaging**: Supports lightweight and fast data transmission.

## Requirements

- **Docker**: [Install Docker](https://www.docker.com/get-started) if you don’t have it yet.
- **Ruby**: [Install Ruby](https://www.ruby-lang.org/en/downloads/) if you want to run the application locally.

## Installation Instructions

### Clone the Repository

1. Open a terminal and clone the repository:

   ```bash
   git clone https://github.com/freddyelgato/MQTT.git
   cd MQTT
   ```

### Running Locally

2. If you plan to run the application locally, install the required dependencies:

   ```bash
   bundle install
   ```

3. Start the MQTT service:

   ```bash
   ruby app.rb
   ```

### Running with Docker

4. Build and run the application using Docker:

   ```bash
   docker build -t mqtt_service .
   docker run -d -p 8080:8080 --name mqtt_server mqtt_service
   ```

5. Verify the service is running by connecting an MQTT client to the server:

   Host: `localhost`
   Port: `8080`

## How it Works

- **Publish/Subscribe Model**: Clients can publish messages to topics or subscribe to topics to receive messages.
- **Lightweight Protocol**: Designed for constrained devices and low-bandwidth, high-latency networks.
- **Event-Driven Architecture**: The service listens for messages and triggers actions based on subscriptions.

## Example Usage

1. Publish a message using an MQTT client:

   ```bash
   mosquitto_pub -h localhost -p 1883 -t "test/topic" -m "Hello, MQTT!"
   ```

2. Subscribe to a topic using an MQTT client:

   ```bash
   mosquitto_sub -h localhost -p 1883 -t "test/topic"
   ```

   Output:

   ```
   Hello, MQTT!
   ```

## Screenshots

### Example 1: MQTT Service Testing
![MQTT Service Testing](https://i.postimg.cc/DZrtQ4GR/Prueba-MQTT.png)

### Example 2: MQTT Message Response
![MQTT Message Response](https://i.postimg.cc/Vvz2KsBv/Prueba-MQTT2.png)

## License

This project is licensed under the MIT License. See the LICENSE file for details.
