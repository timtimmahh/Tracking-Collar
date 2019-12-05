#include <Wire.h>
#include <Adafruit_MPL115A2.h>
#include "Sensor.hpp"

// Adafruit Micro SD Card Reader Pin Configurations:
//
//      Arduino     |  ATMega 2560   |  SD Card Reader 
// =================|================|==================
//        GND       |       GND      |       GND
//        5V        |       5V       |       5V
//        ?         |    20 (SDA)    |       SDA
//        ?         |    21 (SCL)    |       SCL


// function pointer type for temperature conversions
using unitConverter = void(*)(float*); 

// Air pressure unit conversions
#define ATM    0.00986923
#define KPA    1.0
#define BAR    0.01
#define MPA    0.001
#define PASCAL 1000.0
#define PSI    0.145038
#define TORR   7.50062

// Temperature unit conversions
#define CTOF(c) (c * (9.0f/5.0f) + 32)
#define FTOC(c) ((c - 32) * (5.0f/9.0f))
#define CTOK(c) (c + 273.15f)
#define KTOC(c) (c - 273.15f)
enum TempUnit {
  FAHRENHEIT,
  CELSIUS,
  KELVIN
};

// maintains the latest sensor data as well as the change between updates
typedef struct {
  double pressure    = 0.0;
  float tempurature = 0.0f;
  float pressDelta  = 0.0f;
  float tempDelta   = 0.0f;
} sensorData;

// Helper class for obtaining air pressure and temperature data
class PressTemp : public Sensor {
private:
  // Adafruit's sensor library instance
  Adafruit_MPL115A2 *mpl115a2 = new Adafruit_MPL115A2;
  // The unit for air pressure
  double pressureUnit;
  // The unit for temperature
  enum TempUnit tempUnit;
  // The latest sensor data
  sensorData *pT = new sensorData;
public:
  PressTemp();
  // Returns the updated air pressure and temperature
  sensorData *getPressureTemperature();
  // Sets the unit for air pressure and converts the current value
  void setPressureUnit(double pu);
  // Sets the unit for temperature and converts the current value
  void setTemperatureUnit(enum TempUnit conv);
  void **processData() { return (void**)getPressureTemperature(); }
};

