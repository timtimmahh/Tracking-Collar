#include "Arduino.h"

struct BlinkData {
  unsigned long currentTime;
  unsigned long previousTime;
  int ledState = LOW;
  bool exceededInterval(const unsigned long interval) {
    return (currentTime = millis()) - previousTime >= interval;
  }
  void switchState() {
    if (ledState == HIGH)
      ledState = LOW;
    else ledState = HIGH;
  }
};

class TurnSignal {
  private:
    int ledPin;
    bool shouldBlink = false;
    const unsigned long interval = 1000;
    BlinkData blinkData = {};
  public:
    TurnSignal(int ledPin);
    void toggleSignal();
    void checkSwitch(bool shouldToggle);
    void ledBlinker();
};
