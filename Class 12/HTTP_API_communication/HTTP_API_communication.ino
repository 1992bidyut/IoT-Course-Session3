#include<Arduino.h>
#include<ESP8266WiFi.h>
#include<ESP8266WiFiMulti.h>
#include<ESP8266HTTPClient.h>
#include<WiFiClient.h>
#include<ArduinoJson.h>

ESP8266WiFiMulti WiFiMulti;
String uname="bdnath.me@gmail.com";
String upass="abcd";
String deviceId="iotc31654";

void setup() {
Serial.begin(115200);

WiFi.mode(WIFI_STA);
WiFiMulti.addAP("Lareye.com","lareye@2020");
}

void loop() {
 if(WiFiMulti.run() == WL_CONNECTED){
  HTTPClient http;
  String url="http://192.168.0.103/devine_it/S3/api_module/pull_switch_state.php";
  //JSON Encode
  StaticJsonDocument<300> requestDoc;//declare JSON Document
  requestDoc["uname"]=uname;
  requestDoc["upass"]=upass;
  requestDoc["deviceId"]=deviceId;
  
  char JSONmessageBuffer[300];//create buffer for http request
  serializeJson(requestDoc,JSONmessageBuffer);

  Serial.print("Request Body: ");
  Serial.println(JSONmessageBuffer);
  
  http.begin(url);//start http connection
  http.addHeader("Content-Type","application/json");//add heared
  
  int httpCode=http.POST(JSONmessageBuffer);//POST request with buffer
  if(httpCode>0){
    String responseBody=http.getString();
    Serial.print("Response Code: ");
    Serial.println(httpCode);
    Serial.println(responseBody);
    checkResponse(responseBody);
  }
  http.end();// close http connection
  delay(3000);
 }
}

//analysis/decode responseJSON and set output
void checkResponse(String responseBody){
  const size_t bufferSize = JSON_OBJECT_SIZE(2) + JSON_OBJECT_SIZE(3) + JSON_OBJECT_SIZE(5) + JSON_OBJECT_SIZE(8) + 370;
  DynamicJsonDocument responseDoc(bufferSize);
  
  //if have any error
  DeserializationError error=deserializeJson(responseDoc,responseBody);
  
  if(error){
    Serial.println("Deserialze Error!");
    return;
  }

  const char* switch_id = responseDoc["switch_id"];
  const char* switch_state=responseDoc["state"];

  Serial.print("Switch id: ");
  Serial.println(switch_id);
  Serial.print("Switch state: ");
  Serial.println(switch_state);

  if(String(switch_id)==deviceId){
    Serial.println("Device exist!");
    if(String(switch_state)=="1")
    {
      Serial.println("Light on");
      //set pin output as HIGH
    }else{
      Serial.println("Light off");
      //set pin output as LOW
    }
  }else{
    Serial.println("Device not exist!");
  }
}
