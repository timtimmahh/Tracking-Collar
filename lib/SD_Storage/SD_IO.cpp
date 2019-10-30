#include <SPI.h>
#include <SdFat.h>
#include "SD_IO.hpp"


void CollarIO::errorHalt() {
  SD.printSdError(&Serial);
  SysCall::halt();
}

CollarIO::CollarIO(String &fName) { 
	if (!SD.begin(SD_CS_PIN) && !tryFormatExFat()) {
    SD.initErrorHalt(&Serial);
    return;
  }
  
  Serial.print("Opening ");
  Serial.print(fName);
  Serial.println(" as read/write");
  delay(100);
  if (!dataFile.open(fName.c_str(), FILE_WRITE)) {
    error("open failed");
    return;
  }
  open_successful = true;
  Serial.println("Successfully opened file");
  dataFile.rewind();
  char buf[dataFile.fileSize()];
  dataFile.read(buf, dataFile.fileSize());
  Serial.println("Printing contents of file...");
  Serial.println(buf);
}

boolean CollarIO::tryFormatExFat() {
  if (!SD.cardBegin(SD_CONFIG) && !SD.format(&Serial) && !SD.volumeBegin()) {
    error("format ExFat failed");
    return false;
  }

  Serial.print("Bytes per cluster: ");
  Serial.println(SD.bytesPerCluster());
  Serial.println("Format complete");
  return true;
}

void CollarIO::writeData(unsigned size, String *data) {
  if (data == nullptr) {
    Serial.println("Data to write is null, nothing to write");
    return;
  }
  unsigned count = 0;
  while (count < size) {
    dataFile.print(*(data+count));
    if (++count != size) dataFile.print(',');
  }
  dataFile.println();
}


void CollarIO::readCurrentLine(int lineNum, String *line) {
  if (dataFile.available64() == 0 && dataFile.curPosition() != 0 && dataFile.seekCur(-1) && (char)dataFile.peek() == '\n') {
    int count = 0;
    while (dataFile.seekCur(-1) && (char)dataFile.peek() != '\n') *(line+count++) += dataFile.read();
  } else Serial.println("Nothing to read");
}

boolean CollarIO::fileOpened() {
  return open_successful;
}

ExFile *CollarIO::getDataFile() {
  return &dataFile;
}
