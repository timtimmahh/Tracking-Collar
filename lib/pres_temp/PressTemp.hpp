#include <Wire.h>
#include <Adafruit_MPL115A2.h>

// function pointer type for temperature conversions
using unitConverter = void(*)(float*); 

// Air pressure unit conversions
#define ATM    0.00986923f
#define KPA    1.0f
#define BAR    0.01f
#define MPA    0.001f
#define PASCAL 1000.0f
#define PSI    0.145038
#define TORR   7.50062f

// Temperature unit conversions
#define FAHRENHEIT  [](float *c){ *c = (*c * 1.8f) + 32; }
#define CELSIUS     [](float *c){}
#define KELVIN      [](float *c) { *c += 273.15f }

// maintains the latest sensor data as well as the change between updates
typedef struct {
  float pressure    = 0.0f;
  float tempurature = 0.0f;
  float pressDelta  = 0.0f;
  float tempDelta   = 0.0f;
} sensorData;

// Helper class for obtaining air pressure and temperature data
class PressTemp {
private:
  // Adafruit's sensor library instance
  Adafruit_MPL115A2 *mpl115a2 = new Adafruit_MPL115A2;
  // The unit for air pressure
  float *pressureUnit;
  // The unit for temperature
  unitConverter tempUnit;
  // The latest sensor data
  sensorData *pT = new sensorData;
public:
  PressTemp();
  // Returns the updated air pressure and temperature
  sensorData getPressureTemperature();
  // Sets the unit for air pressure and converts the current value
  void setPressureUnit(float pu);
  // Sets the unit for temperature and converts the current value
  void setTemperatureUnit(unitConverter conv);
};

