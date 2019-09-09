#include "Arduino.h"
#include <TurnSignal.h>
#include <MotorMovement.h>


#define DISTANCE_THRESHOLD 10

const int trigPin = 2;
const int echoPin = 3;
float duration, distance;
TurnSignal leftSignal(10);
TurnSignal rightSignal(11);
MotorSet motors(Motor(6, 7), Motor(5, 4));

void setup() {
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
  Serial.begin(9600);
}

TurnSignal *nextSignal = &leftSignal;
int direction = -1;
bool rotating = false;

void loop() {
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);

  duration = pulseIn(echoPin, HIGH);
  distance = (duration*.0343)/2;
  Serial.print("Distance: ");
  Serial.println(distance);
  if (distance < DISTANCE_THRESHOLD && !rotating) {
    nextSignal->checkSwitch(true);
    motors.rotateDirection(direction);
    if (nextSignal == &leftSignal) {
      direction = -1;
      nextSignal = &rightSignal;
    } else if (nextSignal == &rightSignal) {
      direction = 1;
      nextSignal = &leftSignal;
    }
    rotating = true;
  } else if (distance >= DISTANCE_THRESHOLD) {
    leftSignal.checkSwitch(false);
    rightSignal.checkSwitch(false);
    motors.moveForward();
    rotating = false;
  } else {
    if (nextSignal == &leftSignal)
      rightSignal.ledBlinker();
    else if (nextSignal == &rightSignal)
      leftSignal.ledBlinker();
  }

  delay(100);
}
