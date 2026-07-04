/*
  BeaconOS v0.1 Alpha
  Status Beacon ESP32 firmware starter file.
*/

#include <WiFi.h>
#include <esp_now.h>
#include <Adafruit_NeoPixel.h>

#define LED_PIN 5
#define LED_COUNT 16

Adafruit_NeoPixel pixels(LED_COUNT, LED_PIN, NEO_GRB + NEO_KHZ800);

enum BeaconStatus {
  AVAILABLE,
  BUSY,
  AWAY,
  FOCUS
};

void setStatus(BeaconStatus status) {
  uint32_t color;

  switch (status) {
    case AVAILABLE: color = pixels.Color(0, 255, 0); break;
    case BUSY:      color = pixels.Color(255, 0, 0); break;
    case AWAY:      color = pixels.Color(255, 180, 0); break;
    case FOCUS:     color = pixels.Color(0, 80, 255); break;
  }

  for (int i = 0; i < LED_COUNT; i++) {
    pixels.setPixelColor(i, color);
  }
  pixels.show();
}

void setup() {
  pixels.begin();
  pixels.setBrightness(80);
  setStatus(AVAILABLE);
}

void loop() {
  delay(1000);
}
