#include "Arduino.h"

class Motor {
  private:
    int speedPin;
    int dirPin;
    int speed = 255;
    const int fwd = LOW;
    const int bkd = !fwd;

  public:
    Motor(int speedPin, int dirPin);
    Motor(int speedPin, int dirPin, int speed);
    void moveForward();
    void moveBackward();
    void stop();
};

class MotorSet {
  private:
    Motor leftMotor;
    Motor rightMotor;
  
  public:
    MotorSet(Motor left, Motor right) : leftMotor(left), rightMotor(right){}
    void moveForward();
    void moveBackward();
    void stop();
    void rotateDirection(int direction);
};
