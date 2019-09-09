#include "Arduino.h"
#include "MotorMovement.h"

Motor::Motor(int speedPin, int dirPin) {
  this->speedPin = speedPin;
  this->dirPin = dirPin;
  pinMode(speedPin, OUTPUT);
  pinMode(dirPin, OUTPUT);
  analogWrite(speedPin, 0);
}

Motor::Motor(int speedPin, int dirPin, int speed) {
  this->speedPin = speedPin;
  this->dirPin = dirPin;
  this->speed = speed;
  pinMode(speedPin, OUTPUT);
  pinMode(dirPin, OUTPUT);
  analogWrite(speedPin, 0);
}

void Motor::moveForward() {
  digitalWrite(dirPin, fwd);
  analogWrite(speedPin, speed);
}

void Motor::moveBackward() {
  digitalWrite(dirPin, bkd);
  analogWrite(speedPin, speed);
}

void Motor::stop() {
  analogWrite(speedPin, 0);
}


