#include "UltiGPS.hpp"

UltiGPS::UltiGPS(Stream *str) : str(str), Adafruit_GPS((HardwareSerial*)str) {
  begin(9600);
  sendCommand(PMTK_SET_NMEA_OUTPUT_RMCGGA);
  sendCommand(PMTK_SET_NMEA_UPDATE_200_MILLIHERTZ);
  OCR0A = 0xAF;
  TIMSK0 |= _BV(OCIE0A);

  delay(500);
  Serial.print("\nSTARTING LOGGING....");
  if (LOCUS_StartLogger()) Serial.println("STARTED");
  else Serial.println(" no response :(");
  delay(1000);
}

char UltiGPS::read() {
  return Adafruit_GPS::read();
}

