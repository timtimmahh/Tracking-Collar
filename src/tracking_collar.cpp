#include <Arduino.h>
#include <ADXL345.hpp>
#include <SD_IO.hpp>
#include <vma301.hpp>
#include <PressTemp.hpp>
//#include <UltiGPS.hpp>

CollarIO *cio;
//RTC      rtc;
PressTemp pT;
//UltiGPS *uGPS;
String data[] = {String("first"), String("second"), String("third"), String("fourth"), String("fifth")}; 


void setup() {
  Serial.begin(9600);
  while (!Serial) {}
  Serial.println("Type any character to begin");

  while (!Serial.available()) {
    yield();
  }
  do {
    delay(10);
  } while(Serial.read() >= 0);

  pT = PressTemp();
  Serial.println();
  Serial.println("The SD card will now be formatted as exFAT.\n");

  String fileName = "data.csv";
  cio = new CollarIO(fileName);
  Serial.print("Pressure/Temperature=");
  sensorData p = pT.getPressureTemperature();
  Serial.print(p.pressure);
  Serial.print("/");
  Serial.println(p.tempurature);
  //if (cio->fileOpened())
//    uGPS = new UltiGPS((Stream*)cio->getDataFile());
}

static const float pressureUnits[] = {ATM, KPA, BAR, MPA, PASCAL, PSI, TORR};
static const String pressureNames[] = {"ATM", "KPA", "BAR", "MPA", "PASCAL", "PSI", "TORR"};

void loop() {
  cio->writeData(5, data);
  String data2;
  cio->readCurrentLine(-1, &data2);
  Serial.print(data2);
  Serial.println("Looping...");
  for (int x = 0; x < 7; x++) {
    sensorData pt = pT.getPressureTemperature();
    pT.setPressureUnit(pressureUnits[x]);
    Serial.println("Pressure=");
    Serial.print(pt.pressure);
    Serial.print(" ");
    Serial.print(pressureNames[x]);
    Serial.print(" delta=");
    Serial.println(pt.pressDelta);
    Serial.print("Temperature=");
    Serial.print(pt.tempurature);
    Serial.print("Celsius delta=");
    Serial.println(pt.tempDelta);
  }
}


ISR(TIMER0_COMPA_vect) {
//  char c = uGPS->read();
  //if (GPSECHO && c) {
#ifdef UDR0
   // UDR0 = c;
#else
    //Serial.write(c);
#endif
  //}
}

