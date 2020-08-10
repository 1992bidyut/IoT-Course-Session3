
#include <LiquidCrystal.h>
  
// initialize the library by associating any needed LCD interface pin
// with the arduino pin number it is connected to
const int rs = 7, en = 6, d4 = 5, d5 = 4, d6 = 3, d7 = 2;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

#include "DHT.h"
#define DHTPIN 8
#define DHTTYPE DHT22
DHT dht(DHTPIN, DHTTYPE);
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  Serial.println(F("DHTxx test!"));
  lcd.begin(16, 2);
  // Print a message to the LCD.
  dht.begin();
}

void loop() {
  // put your main code here, to run repeatedly:
  float h = dht.readHumidity();
  // Read temperature as Celsius (the default)
  float t = dht.readTemperature();
  // Read temperature as Fahrenheit (isFahrenheit = true)
  float f = dht.readTemperature(true);
  Serial.println(t);
  
  lcd.setCursor(0, 0);
  lcd.print("Temp: ");
  lcd.setCursor(7, 0);
  lcd.print(t);
  
  lcd.setCursor(0, 1);
  lcd.print("Humi: ");
  lcd.setCursor(7, 1);
  lcd.print(h);
  delay(2000);
}
