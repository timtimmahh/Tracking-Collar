#include "PressTemp.hpp"
#include <Wire.h>

PressTemp::PressTemp() {
  mpl115a2->begin();
  setPressureUnit(KPA);
  setTemperatureUnit(CELSIUS);
}

sensorData PressTemp::getPressureTemperature() {
  float press = 0, temp = 0;
  mpl115a2->getPT(&press, &temp);
  press *= *pressureUnit;
  tempUnit(&temp);
  pT->pressDelta = press - pT->pressure;
  pT->tempDelta = temp - pT->tempurature;
  pT->pressure = press;
  pT->tempurature = temp;
  return *pT;
}

void PressTemp::setPressureUnit(float pu) {
  *pressureUnit = pu;
  pT->pressure *= *pressureUnit;
  pT->pressDelta *= *pressureUnit;
}

void PressTemp::setTemperatureUnit(unitConverter conv) {
  tempUnit = conv;
  tempUnit(&pT->tempurature);
  tempUnit(&pT->tempDelta);
}

