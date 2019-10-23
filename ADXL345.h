
/*
 * ADXL345.h
 *
 * Created: 10/15/2019 3:02:40 PM
 *  Author: jdgir
 */ 
/* 
* ADXL345.h
*
* Created: 10/7/2019
* Author: Jason Forsyth
*/


#ifndef __ADXL345_H__
#define __ADXL345_H__

/*
   DEFINE REGISTER ADDRESSES
   Useful when calling registers such as readRegister(DATA_FORMAT)
*/
#define DEVICE_ID_REG_ADDRESS 0x0



//include SPI header from Arduino
#include <SPI.h>
	
class ADXL345 {
//variables
public:

	//enumeration to specify what acceleration range to measure
	enum ADXL_RANGE {TWO_G, FOUR_G, EIGHT_G, SIXTEEN_G};
		
	//enumeration to specify whether 10-bit or full 13-bit resolution should be applied.
	enum ADXL_RESOLUTION {NORMAL_RESOLUTION, FULL_RESOLUTION};
		
protected:
private:

	//local field to keep track of which pin is used for the CS
	int csPin = 7;
	
	//local fields to track the current measurement range and resolution
	ADXL_RANGE	currentRange;
	ADXL_RESOLUTION currentResolution;

//functions
public:
	ADXL345();
	~ADXL345();
	

	/**
	 * \brief function to initialize the ADXL345. Must specify which pin on the Arduino is connected to the CS line.
	 *  Optional argument provided to specify a new sampling range
	 * 
	 * \param _CS_PIN Digital I/O pin which will be used for CS line
	 * \param _RANGE Optional parameter to specify a desired sampling range.
	 * \param _RESOLUTION Optional parameter to specify a desired sampling resolution.
	 * 
	 * \return void
	 */
	void setup(int _CS_PIN, ADXL_RANGE _RANGE=ADXL_RANGE::TWO_G, ADXL_RESOLUTION _RESOLUTION=NORMAL_RESOLUTION);
	
	/**
	 * \brief Perform a self-test on the ADXL345 by attempting to read the DEVICE_ID register.
	 * 
	 * 
	 * \return bool TRUE is self-test was successful, FALSE otherwise.
	 */
	bool selfTest();
	
	/**
	 * \brief Read acceleration from X-axis. Result is raw reading in local units.
	 * 
	 * 
	 * \return int16_t X-axis acceleration in local units.
	 */
	int16_t getXAcceleteration();
	
	/**
	 * \brief Read acceleration from Y-axis. Result is raw reading in local units.
	 * 
	 * 
	 * \return int16_t Y-axis acceleration in local units.
	 */
	int16_t getYAcceleteration();
	
	/**
	 * \brief Read acceleration from Z-axis. Result is raw reading in local units.
	 * 
	 * 
	 * \return int16_t Z-axis acceleration in local units.
	 */
	int16_t getZAcceleteration();
	
	/**
	 * \brief Converts an ADXL345 acceleration reading into G's
	 * 
	 * \param  Raw ADXL345 acceleration reading
	 * 
	 * \return float Acceleration in terms of Gs
	 */
	float convertRawToFloat(int16_t);
	
	
	
protected:

	/**
	 * \brief Read 8-bits from the register specified by address
	 * 
	 * \param address 8-bit register located in the ADXL345
	 * 
	 * \return uint8_t Data read from that register
	 */
	uint8_t readRegister(uint8_t address);
	

	/**
	 * \brief Write 8-bits to a register in the ADXL345
	 * 
	 * \param address 8-bit register located in the ADXL345 
	 * \param value Data to be written to that register
	 * 
	 * \return void
	 */
	void writeRegister(uint8_t address, uint8_t value);
	
	/**
	 * \brief Read multiple bytes beginning at the base address. 
	 * 
	 * \param baseAddress 8-bit register located in the ADXL345. Read will consume additional (increment) registers.
	 * \param num Number of registers to read including the based address
	 * \param data Pointer to array to hold read data. Must be of sufficient length to hold nums.
	 * 
	 * \return void
	 */
	void readMultiBytes(uint8_t baseAddress, int num, uint8_t data[]);
	
private:
	/**
	 * \brief Concatenates two bytes
	 * 
	 * \param byte1
	 * \param byte2
	 * 
	 * \return Unsigned 16 bit int
	 */
	uint16_t concatBytes(uint8_t byte1, uint8_t byte2);

}; //ADXL345

#endif //__ADXL345_H__