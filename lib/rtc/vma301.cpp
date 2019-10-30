#include "vma301.hpp"
#include <DS1302.h>

RTC::RTC() {

}

RTC::RTC(Time t) {
  setTime(t);
}

RTC::RTC(uint16_t year, uint8_t month, uint8_t d, uint8_t hr, uint8_t min, uint8_t sec, Time::Day day) {
  setTime(Time(year, month, d, hr, min, sec, day));
}

String RTC::dayToString(const Time::Day day) {
  switch (day) {
    case Time::kSunday: return "Sunday";
    case Time::kMonday: return "Monday";
    case Time::kTuesday: return "Tuesday";
    case Time::kWednesday: return "Wednesday";
    case Time::kThursday: return "Thursday";
    case Time::kFriday: return "Friday";
    case Time::kSaturday: return "Saturday";
  }
  return "(unknown day)";
}

void RTC::setTime(Time t) {
 
  rtc->writeProtect(false);
  rtc->halt(false);

  rtc->time(t);
}

Time RTC::getTime() {
  return rtc->time();
}

void RTC::getTime(String *timeStr) {
  Time t = rtc->time();
  char buf[sizeof(DEFAULT_FORMAT)];
  snprintf(buf, min(sizeof(*timeStr), sizeof(DEFAULT_FORMAT)), DEFAULT_FORMAT, 
      t.mon, t.day, t.yr, t.hr, t.min, t.sec);
  *timeStr = String(buf);
}
