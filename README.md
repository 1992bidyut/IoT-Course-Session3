# IoT-Course-Session3
>To open the circuit diagram(.pdsprj) you need Proteus 8.7 software

>You need ArduinoIDE for open arduino and nodeMCU code and required some Arduino Support Library:
- DHT22 library
- NodeMCU board library: http://arduino.esp8266.com/stable/package_esp8266com_index.json
- ArduinoJson

# MQTT-Mosquito server installation on Ubuntu
Installation Commands:
>$ sudo apt update

>$ sudo apt install -y mosquitto mosquitto-clients

Check Mosquitto detail:
>$ mosquitto -v

Auto-run on-boot command:
>$ sudo systemctl enable mosquitto.service

Find Hostname:
>$ hostname -I

# Test mosquitto server
Terminal 1: Subscribe a topic
>$ mosquitto_sub -d -t testTopic

Terminal 2: Publish message of the topic
>$ mosquitto_pub -d -t testTopic -m "Hello Mosquitto's subscriber"


Disclaimer
>This cource is designde by Bidyut Debnath(me) Email: bdnath.me@gmail.com

>Some of the resources are developed by the help of @Arduino @Wiki @CISCO @TutorialPoint 