#include "Arduino.h"
#include "TurnSignal.h"

TurnSignal::TurnSignal(int ledPin) {
	this->ledPin = ledPin;
	pinMode(ledPin, OUTPUT);
}

void TurnSignal::toggleSignal() {
	shouldBlink = !shouldBlink;
}

void TurnSignal::checkSwitch(bool shouldToggle) {
  if (shouldToggle)
    this->ledBlinker();
  else {
    blinkData.ledState = LOW;
    digitalWrite(ledPin, blinkData.ledState);
  }
}

void TurnSignal::ledBlinker() {
	if (blinkData.exceededInterval(interval)) {
		blinkData.previousTime = blinkData.currentTime;

		blinkData.switchState();

		digitalWrite(ledPin, blinkData.ledState);
	}
}

