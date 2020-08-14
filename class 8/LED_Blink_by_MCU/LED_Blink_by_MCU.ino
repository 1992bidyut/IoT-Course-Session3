//#include <ESP8266WiFi.h>
//#include <ESP8266WiFiMulti.h>

void setup() {
  // put your setup code here, to run once:
  pinMode(16,OUTPUT);
  Serial.begin(115200);
  Serial.println("Serial test");
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(16,HIGH);
  Serial.println("Light ON");
  delay(1000);
  digitalWrite(16,LOW);
  Serial.println("Light off");
  delay(1000);

}
