#include <Adafruit_GPS.h>

//#define GPSECHO true



class UltiGPS : Adafruit_GPS {
private:
  Stream *str;
  boolean usingInterrupt = true;
public:
  UltiGPS(Stream *str);
  void getLocation(void *data);
  char read();
};

