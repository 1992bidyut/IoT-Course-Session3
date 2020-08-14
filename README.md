# IoT-Course-Session3
# To open the circuit diagram(.pdsprj) you need Proteus 8.7 software
# You need ArduinoIDE for open arduino and nodeMCU code

# MQTT-Mosquito server installation on Ubuntu
Installation Commands:
> $ sudo apt update
> $ sudo apt install -y mosquitto mosquitto-clients
Check Mosquitto detail:
> $ mosquitto -v
Auto-run on-boot command:
> $ sudo systemctl enable mosquitto.service
Find Hostname:
> $ hostname -I

# Test mosquitto server
Terminal 1: Subscribe a topic
> $ mosquitto_sub -d -t testTopic

Terminal 2: Publish message of the topic
> $ mosquitto_pub -d -t testTopic -m "Hello Mosquitto's subscriber"