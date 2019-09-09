#include "Arduino.h"
#include "MotorMovement.h"

void MotorSet::moveForward() {
  leftMotor.moveForward();
  rightMotor.moveForward();
}

void MotorSet::moveBackward() {
  leftMotor.moveBackward();
  rightMotor.moveBackward();
}

void MotorSet::stop() {
  leftMotor.stop();
  rightMotor.stop();
}

void MotorSet::rotateDirection(int direction) {
 if (direction < 0) {
   leftMotor.moveBackward();
   rightMotor.moveForward();
 } else {
   rightMotor.moveBackward();
   leftMotor.moveForward();
 }
}


