#include "Arduino.h"
// #include <ADXL345.hpp>
// #include <PressTemp.hpp>
// #include <UltiGPS.hpp>
#include <LoRa.hpp>


// CollarIO *cio;
// PressTemp *pT;
// UltiGPS *uGPS;


void setup(void) {
  Serial.begin(115200);
  Serial.println("Type any character to begin");
  do {
    delay(10);
  } while(Serial.read() <= 0);

  Serial.println();
  Serial.println("Setting up LoRa");
  int ls = loraSetup();
  if (ls == ERR_NONE)
    Serial.println("LoRa is setup");
  else
    Serial.println("LoRa failed to setup");
  Serial.print("Lora setup state: ");
  Serial.println(ls);
  // Serial.println("The SD card will now be formatted as exFAT.\n");
  
  // String fileName("data.csv");
  // cio = CollarIO::cioInstance(3);
  // Serial.println("Contents of " + fileName + ":");
  // ExFile *dataFile = cio->openFile(fileName);
  // Serial.println(cio->readContents(dataFile));
  // Serial.print("Pressure/Temperature=");
  // pT = new PressTemp();
  // sensorData p = *pT->getPressureTemperature();
  // Serial.print(p.pressure);
  // Serial.print(" KPA/");
  // Serial.print(p.tempurature);
  // Serial.println(" C");
  // uGPS = new UltiGPS();
}

void loop() {
  loraLoop();
  delay(100);
}
