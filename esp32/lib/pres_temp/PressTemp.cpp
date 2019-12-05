#include "PressTemp.hpp"
#include <Wire.h>

static float convFor(float temp, enum TempUnit oldUnit, TempUnit unit) {
  float(*backConv)(float);
  float(*conv)(float);
  if (oldUnit == FAHRENHEIT) {
    backConv = [](float c) { return FTOC(c); };
  } else if (oldUnit == KELVIN) {
    backConv = [](float c) { return KTOC(c); };
  } else {
    backConv = [](float c) { return c; };
  }
  if (unit == FAHRENHEIT) {
    conv = [](float c) { return CTOF(c); };
  } else if (unit == KELVIN) {
    conv = [](float c) { return CTOK(c); };
  } else {
    conv = [](float c) { return c; };
  }
  return conv(backConv(temp));
}


PressTemp::PressTemp() : Sensor("pres_temp.csv") {
  mpl115a2->begin();
  setPressureUnit(KPA);
  setTemperatureUnit(CELSIUS);
}

sensorData *PressTemp::getPressureTemperature() {
  double press = 0, temp = 0;
  mpl115a2->getPT((float*)&press, (float*)&temp);
  press *= pressureUnit;
  temp = convFor(temp, CELSIUS, tempUnit);
  pT->pressDelta = press - pT->pressure;
  pT->tempDelta = temp - pT->tempurature;
  pT->pressure = press;
  pT->tempurature = temp;
  return pT;
}

void PressTemp::setPressureUnit(double pu) {
  if (pressureUnit != pu) {
    pT->pressure /= pressureUnit;
    pT->pressDelta /= pressureUnit;
    pressureUnit = pu;
    pT->pressure *= pressureUnit;
    pT->pressDelta *= pressureUnit;
  }
}

void PressTemp::setTemperatureUnit(enum TempUnit conv) {
  if (tempUnit != conv) {
    pT->tempurature = convFor(pT->tempurature, tempUnit, conv);
    pT->tempDelta = convFor(pT->tempDelta, tempUnit, conv);
    tempUnit = conv;
  }
}

