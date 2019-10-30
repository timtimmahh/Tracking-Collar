#include <SPI.h>
#include "ADXL345.hpp"

ADXL345::ADXL345() {

  //setup SPI interface for CPOL=1, CPHA=1 or SPI_MODE_3 in Arduino
  SPI.begin();
  SPI.setDataMode(SPI_MODE3); //this works best. New SPI_TRANSACTION is not well documented

  //set CS pin to HIGH
  pinMode(CS_PIN, OUTPUT);
  digitalWrite(CS_PIN,HIGH);

  writeRegister((byte)(REG_POW_CTL), 0x08);
}

byte ADXL345::readRegister(byte address)
{
  address |= 0x80; //set MSB high for READ
  digitalWrite(CS_PIN, LOW);
  SPI.transfer(address);
  byte rx = SPI.transfer(0x0);
  digitalWrite(CS_PIN, HIGH);
  return rx;
}

void ADXL345::writeRegister(byte address, byte value)
{
  digitalWrite(CS_PIN, LOW);
  SPI.transfer(address);
  SPI.transfer(value);
  digitalWrite(CS_PIN, HIGH);
}

void ADXL345::readXAxis(uint16_t *xData) {
  *xData = (readRegister(REG_DATA_X1) << 8) | readRegister(REG_DATA_X0);
}

void ADXL345::readYAxis(uint16_t *yData) {
  *yData = (readRegister(REG_DATA_Y1) << 8) | readRegister(REG_DATA_Y0);
}

void ADXL345::readZAxis(uint16_t *zData) {
  *zData = (readRegister(REG_DATA_Z0) << 8) | readRegister(REG_DATA_Z0);
}

void ADXL345::readAllAxes(uint16_t *xData, uint16_t *yData, uint16_t *zData) {
  readXAxis(xData);
  readYAxis(yData);
  readZAxis(zData);
}

void ADXL345::printAxes() {

  uint16_t x, y, z;
  readAllAxes(&x, &y, &z);

  Serial.print("x: ");
  Serial.print(x);
  
  Serial.print("y: ");
  Serial.print(y);
  
  
  Serial.print("z: ");
  Serial.println(z);

}
