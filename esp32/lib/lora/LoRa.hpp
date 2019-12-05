#include <LoRaLib.h>

#if defined(ESP32) || defined(ESP8266)
  #define LORA_CS_PIN 15
#else
  #define LORA_CS_PIN 53
#endif

RFM96 *lora = new RFM96(new LoRa(LORA_CS_PIN, 2, 3, *(new SPIClass(HSPI))));
volatile bool receivedFlag = false;
volatile bool transmitFlag = false;
volatile bool enableInterrupt = true;
bool isLoraSetup = false;
int transmissionState = ERR_NONE;

void printStats(int state, String &str) {
  if (state == ERR_NONE) {
    Serial.println("Received packet!");

    Serial.print("Data:\t\t\t");
    Serial.println(str);

    Serial.print("RSSI:\t\t\t");
    Serial.print(lora->getRSSI());
    Serial.println(" dBm");

    Serial.print("SNR:\t\t\t");
    Serial.print(lora->getSNR());
    Serial.println(" dB");

    Serial.print("Frequency error:\t");
    Serial.print(lora->getFrequencyError());
    Serial.println(" Hz");
  } else if (state == ERR_RX_TIMEOUT)
    Serial.println("timeout!");
  else if (state == ERR_CRC_MISMATCH)
    Serial.println("CRC error!");
}

int loraSetup() {
  int state = lora->begin(915.0);
  if (state != ERR_NONE)
    return state;
  lora->setDio0Action([]{ 
      if (enableInterrupt)
        receivedFlag = true;
  });

  state = lora->startReceive();
  if (state != ERR_NONE)
    return state;
  //transmissionState = lora->startTransmit("Hello World!");
  // if (state != ERR_NONE)
  //  return transmissionState;
  isLoraSetup = true;
  return ERR_NONE;
}

void loraLoop() {
  if (!isLoraSetup) {
    int state = loraSetup();
    if (state != ERR_NONE) {
      Serial.print("Error setting up LoRa: ");
      Serial.println(state);
      return;
    } else 
      Serial.println("LoRa Setup");
  }

  if (receivedFlag) {
    enableInterrupt = false;
    receivedFlag = false;
    String str;
    int state = lora->readData(str);
    printStats(state, str);
    enableInterrupt = true;
  }

  // String msg = "Hello World!";
  // Serial.println("Sending " + msg);
  // transmissionState = lora->transmit("Hello World!");
  // if (transmissionState == ERR_NONE) {
  //   Serial.println("transmission finished!");
  //   Serial.print("Datarate: ");
  //   Serial.print(lora->getDataRate());
  //   Serial.println(" bps");
  // } else {
  //   Serial.print("failed, code ");
  //   Serial.println(transmissionState);
  // }

    delay(1000);
}
