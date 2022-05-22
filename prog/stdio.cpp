#include <Arduino.h>

extern "C" int printf(const char *format, ...)
{
    char buf[PRINTF_BUF];
    int ret;
    va_list ap;
    va_start(ap, format);
    ret = vsnprintf(buf, sizeof(buf), format, ap);
    Serial.write(buf);
    va_end(ap);
    return ret;
}
