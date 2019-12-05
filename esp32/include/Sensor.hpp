#include <freertos/FreeRTOS.h>
#include <freertos/queue.h>
#include <CollarIO.hpp>
/*
 * Data for queue messages containing sensor data.
 */
typedef struct {
  ExFile *file;
  void **data;
  unsigned size;
} QueueItem;

/* An abstract sensor class that initializes the file its data will be written to. */
class Sensor {
  private:
    /* A pointer to the file used to store this sensor's data. */

    ExFile *dataFile;
  public:
    /* Opens the file for this sensor's data. */
    Sensor(String fileName) : 
      dataFile(CollarIO::cioInstance()->openFile(fileName)){};

    /* Sends data to the queue to be written. Allows for overwriting waiting messges if the queue is full. */
    void sendToQueue(void **data, unsigned size, bool overwriteIfFull=false) {
      QueueHandle_t ioQueue = CollarIO::cioInstance()->ioQueue;
      QueueItem message;
      message.file = dataFile;
      message.data = data;
      message.size = size;
      if (overwriteIfFull)
        xQueueOverwriteFromISR(ioQueue, &&message, NULL);
      else 
        xQueueSendFromISR(ioQueue, &&message, NULL);
    };
    /* Function for sensor classes to implement specifying the data to obtain and its format. */
    virtual void **processData() = 0;
};
