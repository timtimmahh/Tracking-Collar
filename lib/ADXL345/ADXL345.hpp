#include <SPI.h>

#define CS_PIN 7

#define REG_DATA_X0 0x32
#define REG_DATA_X1 0x33
#define REG_DATA_Y0 0x34
#define REG_DATA_Y1 0x35
#define REG_DATA_Z0 0x36
#define REG_DATA_Z1 0x37

#define REG_POW_CTL 0x2d

/**
 * The ADXL345 Accelerometer Sensor Class
 */
class ADXL345 {
private:
  /**
   * Reads the byre
   */
  byte readRegister(byte addr);
  void writeRegister(byte addr, byte value);
public:
  ADXL345();
  void readXAxis(uint16_t *xData);
  void readYAxis(uint16_t *yData);
  void readZAxis(uint16_t *zData);
  void readAllAxes(uint16_t *xData, uint16_t *yData, uint16_t *zData);
  void printAxes();
};

