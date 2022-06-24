#include <stdio.h>
#include "Adafruit_TinyUSB.h"

static const uint8_t IO1 = 9;
static const uint8_t IO2 = 8;
static const uint8_t IO3 = 7;
static const uint8_t Analog1 = 4;
static const uint8_t Analog2 = 5;
static const uint8_t Analog3 = 6;

void setup()
{
    Serial.begin(115200);
    analogReadResolution(12);
    pinMode(Analog1, INPUT);
    pinMode(Analog2, INPUT);
    pinMode(Analog3, INPUT);
    delay(2000);
    Serial.println("MeasureDiode");
}

static inline void inputPullUp(uint8_t pin)
{
    pinMode(pin, INPUT_PULLUP);
}
static inline void inputPullDown(uint8_t pin)
{
    pinMode(pin, INPUT_PULLDOWN);
}
static inline void outputHigh(uint8_t pin)
{
    pinMode(pin, OUTPUT);
    digitalWrite(pin, HIGH);
}
static inline void outputLow(uint8_t pin)
{
    pinMode(pin, OUTPUT);
    digitalWrite(pin, LOW);
}
static inline void do_analog(uint8_t pin, int *analog, int *voltage)
{
    *analog = analogRead(pin);
    *voltage = *analog*3300/4096;
}

void do_measure(uint8_t iopin, uint8_t apin, const char *pattern)
{
    char buff[80];
    int level;
    int analog;
    int voltage;
    level = digitalRead(iopin);
    do_analog(apin, &analog, &voltage);
    snprintf(buff, sizeof(buff), "%s | %d | %2d.%03d |", pattern,
        level, voltage/1000, voltage%1000);
    Serial.println(buff);
}

void loop()
{
    if (Serial.available() > 0) {
        int ch = Serial.read();
        if (ch == '\n' || ch == '\r') {
            Serial.println("| IO1 | IO2 | IO3 | | D | Analog |");
            Serial.println("|-----|-----|-----|-|--:|-------:|");

            inputPullUp(IO1);
            outputLow(IO2);
            inputPullUp(IO3);
            do_measure(IO1, Analog1, "| Ipu | L   | Ipu |");

            inputPullUp(IO1);
            inputPullUp(IO2);
            outputLow(IO3);
            do_measure(IO1, Analog1, "| Ipu | Ipu | L   |");

            inputPullDown(IO1);
            outputHigh(IO2);
            inputPullDown(IO3);
            do_measure(IO3, Analog3, "| Ipd | H   | Ipd |");

            outputHigh(IO1);
            inputPullDown(IO2);
            inputPullDown(IO3);
            do_measure(IO3, Analog3, "| H   | Ipd | Ipd |");

            Serial.println();
        }
    }
}
