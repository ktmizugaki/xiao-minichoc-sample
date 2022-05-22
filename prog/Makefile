BOARD_TAG = seeed_XIAO_m0
ARDUINO_LIBS = Adafruit_TinyUSB_Arduino
CFLAGS += -DUSE_TINYUSB -Isrc
CXXFLAGS += -DUSE_TINYUSB

LOCAL_C_SRCS = $(wildcard *.c) $(shell find src -type f -name "*.c")
LOCAL_CPP_SRCS = $(wildcard *.cpp) $(shell find src -type f -name "*.cpp")

include $(ARDUINO_DIR)/arduino-mk/Sam.mk
