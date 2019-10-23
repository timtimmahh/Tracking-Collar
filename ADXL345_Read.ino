#include <SPI.h>

//use pin #7 as CS
const int CS_PIN = 7;

byte readRegister(byte address)
{
  address |= 0x80; //set MSB high for READ
  digitalWrite(CS_PIN, LOW);
  SPI.transfer(address);
  byte rx = SPI.transfer(0x0);
  digitalWrite(CS_PIN, HIGH);
  return rx;
}

void writeRegister(byte address, byte value)
{
  digitalWrite(CS_PIN, LOW);
  SPI.transfer(address);
  SPI.transfer(value);
  digitalWrite(CS_PIN, HIGH);

  return;
}

void setup() {

  //setup SPI interface for CPOL=1, CPHA=1 or SPI_MODE_3 in Arduino
  SPI.begin();
  SPI.setDataMode(SPI_MODE3); //this works best. New SPI_TRANSACTION is not well documented

  //set CS pin to HIGH
  pinMode(CS_PIN, OUTPUT);
  digitalWrite(CS_PIN,HIGH);
  Serial.begin(9600);

}

void loop() {

  // Testing //

  writeRegister(0x2D, 0x8); // begin
//  byte holder = readRegister(0x2D);
//  Serial.println(holder, BIN);

  uint8_t x0 = readRegister(0x32);
  uint8_t x1 = readRegister(0x33);
  int16_t x = (x1 << 8) | x0;

  uint8_t y0 = readRegister(0x34);
  uint8_t y1 = readRegister(0x35);
  int16_t y = (y1 << 8) | y0;

  uint8_t z0 = readRegister(0x36);
  uint8_t z1 = readRegister(0x37);
  int16_t z = (z1 << 8) | z0;

  Serial.print("x: ");
  Serial.print(x);
  
  Serial.print("y: ");
  Serial.print(y);
  
  
  Serial.print("z: ");
  Serial.println(z);

  delay(100);

}
