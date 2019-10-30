#include <SPI.h>
#include <SdFat.h>

// Adafruit Micro SD Card Reader Pin Configurations:
//
//      Arduino     |  ATMega 2560   |  SD Card Reader 
// =================|================|==================
//        GND       |       GND      |       GND
//        5V        |       5V       |       5V
//     13 (SCK)     |    52 (SCK)    |       CLK
//     12 (MISO)    |    50 (MISO)   |       D0
//     11 (MOSI)    |    51 (MOSI)   |       DI
//     10 (SS)      |    53 (SS)     |       CS
//

#define SD_FAT_TYPE 2
#define ENABLE_DEDICATED_SPI 1

#define SS 53
#define SD_CS_PIN 53


#if HAS_SDIO_CLASS
#define SD_CONFIG SdioConfig(FIFO_SDIO)
#elif ENABLE_DEDICATED_SPI
#define SD_CONFIG SdSpiConfig(SD_CS_PIN, DEDICATED_SPI)
#else
#define SD_CONFIG SdSpiConfig(SD_CS_PIN, SHARED_SPI)
#endif

#define error(s) (Serial.println(F(s)),errorHalt())

class CollarIO {
private:
	SdExFat SD;
  ExFile dataFile;
  char **lineAddrs;
  boolean open_successful = false;
  void errorHalt();
  boolean tryFormatExFat();
public:
  CollarIO(String &fileName);
  boolean fileOpened();
  void writeData(unsigned size, String *data);
  void readCurrentLine(int lineNum, String *line); /* a -1 lineNum indicates the last line in the file */
  ExFile *getDataFile();
};

