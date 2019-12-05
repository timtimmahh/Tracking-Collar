/*
Tracking Collar Xlabs Project Fall 2019 - Philip Archer, Claire Doyle, Justyn Girdner, Timothy Logan
*/

#include <Wire.h>
#include <Time.h>
#include <Adafruit_Si7021.h> //All in one board
#include <Adafruit_BMP280.h> //pressure board
#include <thermistor.h> //Thermistor library
#include <TinyGPS.h> //GPS library
#include "HardwareSerial.h"
#include "GPS.h"

// Definitions for GPS
#if defined (ARDUINO_ARCH_AVR)
#define SerialMonitorInterface Serial
#include <SoftwareSerial.h>
#elif defined(ARDUINO_ARCH_SAMD)
#define SerialMonitorInterface SerialUSB
#include "SoftwareSerialZero.h"
#endif

// Analog pin used to read the NTC for thermistor
#define NTC_PIN               A1

// defines for ambient light
#define TSL2572_I2CADDR     0x39
#define GAIN_1X 0
#define GAIN_8X 1
#define GAIN_16X 2
#define GAIN_120X 3

//only use this with 1x and 8x gain settings
#define GAIN_DIVIDE_6 true 
#define P0 1013.25 // for pressure
int gain_val = 0;

// Sensor variables
Adafruit_BMP280 bmp; // bmp280 pressure sensor
Adafruit_Si7021 sensor; // all in one sensor

// Thermistor object
THERMISTOR thermistor(NTC_PIN,        // Analog pin (defined above)
                      21000,          // Nominal resistance at 25 ºC
                      3950,           // thermistor's beta coefficient
                      10000);         // Value of the series resistor (a 10k resistor is being used in our setup)

float celcius; //outside temperature value
uint16_t treeTemp; //tree temeprature value
float relativeHumidity;
float ambientLight;
float pressure;
time_t t;
float flon, flat;
unsigned long date, age, alt, sp;
int year; 
uint8_t month, day, hour, minute, second, hundredths;
char buf[32];

// GPS object and serial
TinyGPS gps;
SoftwareSerial gps_serial(GPS_RXPin, GPS_TXPin);

void setup()
{
  //Start serial communication (for
  Serial.begin(9600);
  gps_serial.begin(GPSBaud);
  
  Wire.begin();

  // GPS
  gpsInitPins();
  delay(100);
  gpsOn();
  delay(100);
  while (gps_serial.available())gps_serial.read();
  
  Serial.print("Initializing sensor... ");
  // 
  if (!sensor.begin()) {
    Serial.println("Sensor not found!");
    while (true);
  }
  Serial.println("Success!");
  TSL2572nit(GAIN_1X);

  if(!bmp.begin())
  {
    Serial.println("BMP init failed!");
    while(1);
  }
  else Serial.println("BMP init success!");
  //bmp.setOversampling(4);

  sensor.reset();
}

void loop()
{
  bool newData = false;
  
  celcius = sensor.readTemperature(); // In box temperature
  //treeTemp = thermistor.read(); // in tree temperature
  relativeHumidity = sensor.readHumidity();
  ambientLight = Tsl2572ReadAmbientLight();
  pressure = bmp.readPressure();
  
  // GPS //
  for (unsigned long start = millis(); millis() - start < 1000;)
  {
    while (gps_serial.available())
    {
      char c = gps_serial.read();
      // SerialMonitorInterface.write(c); // uncomment this line if you want to see the GPS data flowing
      if (gps.encode(c)) // Did a new valid sentence come in?
        newData = true;
    }
  }

  if (newData) 
  {
    gps.f_get_position(&flat, &flon, &age);
    SerialMonitorInterface.print("LAT=");
    SerialMonitorInterface.print(flat == TinyGPS::GPS_INVALID_F_ANGLE ? 0.0 : flat, 6);
    SerialMonitorInterface.print(", =");
    SerialMonitorInterface.print(flon == TinyGPS::GPS_INVALID_F_ANGLE ? 0.0 : flon, 6);
    SerialMonitorInterface.print(" SAT: ");
    SerialMonitorInterface.print(gps.satellites() == TinyGPS::GPS_INVALID_SATELLITES ? 0 : gps.satellites());
  }

  alt = gps.altitude();
  sp = gps.speed();

  // date and time
  gps.crack_datetime(&year, &month, &day, 
    &hour, &minute, &second, &hundredths, &age);
  String str = "timestamp=" + millis();
  sprintf(buf,"local_time='%d/%02d/%02d %02d:%02d:%02d'", month, day, year, hour, minute, second);
  SerialMonitorInterface.print(buf);

  sendMessage();
  delay(1000);
}

void sendMessage()
{
  String message = " TMP1: " + String(celcius)
                 + " TMP2: " + String(celcius)
                 + " HUM: " + String(relativeHumidity) 
                 + " LUX: " + String(ambientLight) 
                 + " PRS: " + String(pressure)
                 + " SPEED: " + String(sp)
                 + " Altitude: " + String(alt) + "\n";
  Serial.print(message);
}


// Ambient Light Code
void TSL2572nit(uint8_t gain)
{
  Tsl2572RegisterWrite( 0x0F, gain );//set gain
  Tsl2572RegisterWrite( 0x01, 0xED );//51.87 ms
  Tsl2572RegisterWrite( 0x00, 0x03 );//turn on
  if(GAIN_DIVIDE_6)
    Tsl2572RegisterWrite( 0x0D, 0x04 );//scale gain by 0.16
  if(gain==GAIN_1X)gain_val=1;
  else if(gain==GAIN_8X)gain_val=8;
  else if(gain==GAIN_16X)gain_val=16;
  else if(gain==GAIN_120X)gain_val=120;
}

void Tsl2572RegisterWrite( byte regAddr, byte regData )
{
  Wire.beginTransmission(TSL2572_I2CADDR);
  Wire.write(0x80 | regAddr); 
  Wire.write(regData);
  Wire.endTransmission(); 
}

float Tsl2572ReadAmbientLight()
{     
  uint8_t data[4]; 
  int c0,c1;
  float lux1,lux2,cpl;

  Wire.beginTransmission(TSL2572_I2CADDR);
  Wire.write(0xA0 | 0x14);
  Wire.endTransmission();
  Wire.requestFrom(TSL2572_I2CADDR,4);
  for(uint8_t i=0;i<4;i++)
    data[i] = Wire.read();
     
  c0 = data[1]<<8 | data[0];
  c1 = data[3]<<8 | data[2];
  
  //see TSL2572 datasheet
  cpl = 51.87 * (float)gain_val / 60.0;
  if(GAIN_DIVIDE_6) cpl/=6.0;
  lux1 = ((float)c0 - (1.87 * (float)c1)) / cpl;
  lux2 = ((0.63 * (float)c0) - (float)c1) / cpl;
  cpl = max(lux1, lux2);
  return max(cpl, 0.0);
}
