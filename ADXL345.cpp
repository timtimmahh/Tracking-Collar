
/*
 * Source.cpp
 *
 * Created: 10/15/2019 3:04:42 PM
 *  Author: jdgir
 */ 
/* 
* ADXL345.cpp
*
* Created: 10/7/2019
* Author: Jason Forsyth
*/


#include "ADXL345.h"
#include "SPI.h"

// default constructor
ADXL345::ADXL345() {
	//DO NOTHING HERE
}

// default destructor
ADXL345::~ADXL345() {
	//DO NOTHING HERE
}

void ADXL345::setup(int _CS_PIN, ADXL_RANGE _RANGE/*=ADXL_RANGE::TWO_G*/, ADXL_RESOLUTION _RESOLUTION/*=NORMAL_RESOLUTION*/) {
	
	//***Step #0***
	//record where the CS is attached, the current range, and resolution
	//set the CS pin to be an OUTPUT HIGH
	csPin=_CS_PIN;
	currentRange=_RANGE;
	currentResolution=_RESOLUTION;
	
	
	//***Step #1***
	//call SPI.begin() to initialize the SPI interface
	SPI.begin();
	
	//***Step #2***
	//use SPI.setDataMode() to select the appropriate SPI mode for operations. 
	//See: https://www.arduino.cc/en/Reference/SPISetDataMode and the lecture notes
	SPI.setDataMode(SPI_MODE3);
	
	//***Step #3 (Optional) ***
	//write to the DATA_FORMAT register to adjust the sampling range
	
	
	//***Step #4 (Optional) ***
	//write to the DATA_FORMAT register to adjust the sampling range
	
	//***Step #5***
	//write to the MEASURE bit in the POWER_CLT register
	//to begin sampling. Ensure the write does not modify other bits by
	//reading the current value, modifying the data locally, and then writing
	//back the new register value.
	ADXL345::writeRegister(0x2D, 0x8);
	
}

void ADXL345::writeRegister(uint8_t address, uint8_t value) {
	//bring CS pin LOW to begin communication
	digitalWrite(csPin, LOW);
	
	//send address of register to be written
	SPI.transfer(address);
	
	//send new value to be written to the register
	SPI.transfer(value);
	
	//bring CS pin HIGH to end communication
	digitalWrite(csPin, HIGH);

	return;
}

byte ADXL345::readRegister(uint8_t address) {
	//modify the address to set bit 7 HIGH to indicate a read
	address |= 0x80; //set MSB high for READ
	
	//bring the CS pin low to begin communication
	digitalWrite(csPin, LOW);
	
	//transfer the register address
	SPI.transfer(address);
	
	//transfer bogus data so the accelerometer can respond
	uint8_t rx = SPI.transfer(0x0);
	
	//bring CS pin HIGH to end communication
	digitalWrite(csPin, HIGH);
	
	//return the data read from the register
	return rx;
}

bool ADXL345::selfTest() {
	
	//implement code to check if you can
	//read the DEVICE_ID register. Return TRUE if
	//the correct result is found, otherwise FALSE.
	
	bool isRead = false;
	
	if ( ADXL345::readRegister(DEVICE_ID_REG_ADDRESS) == 0xE5 ) {
		isRead = true;
	}
	
	return isRead;
}

void ADXL345::readMultiBytes(uint8_t baseAddress, int num, uint8_t data[]) {
	
	for (int i = 0; i < num; i++) {
		data[i] = readRegister(baseAddress + i);
	}
	
	return;
}

int16_t ADXL345::getXAcceleteration() {
	
	uint8_t x0 = readRegister(0x32);
	uint8_t x1 = readRegister(0x33);
	int16_t x = (x1 << 8) | x0;
	
	return x;
}

int16_t ADXL345::getYAcceleteration() {
	
	uint8_t y0 = readRegister(0x34);
	uint8_t y1 = readRegister(0x35);
	int16_t y = (y1 << 8) | y0;
	
	return y;
}

int16_t ADXL345::getZAcceleteration() {
	
	uint8_t z0 = readRegister(0x36);
	uint8_t z1 = readRegister(0x37);
	int16_t z = (z1 << 8) | z0;
	
	return z;
}

float ADXL345::convertRawToFloat(int16_t value) {
	
	float flt = (float)value;
	
	return flt;
}