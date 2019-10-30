#include <DS1302.h>
#include <SPI.h>

#define CLK_PIN 6
#define DAT_PIN 7
#define RST_PIN 8
#define DEFAULT_FORMAT "%02d/%02d/%04d %02d:%02d:%02d"

class RTC {
private:
  DS1302 *rtc = new DS1302(RST_PIN, DAT_PIN, CLK_PIN);
public:
  RTC();
  RTC(Time t);
  RTC(uint16_t year, uint8_t month, uint8_t d, uint8_t hr, uint8_t min, uint8_t sec, Time::Day day);
  String dayToString(const Time::Day day);
  void setTime(Time t);
  Time getTime();
  void getTime(String *timeStr);
};

