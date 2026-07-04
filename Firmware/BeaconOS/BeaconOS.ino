/*
  BeaconOS v0.1 Alpha
  Status Beacon ESP32 firmware starter.

  Required libraries:
  - Adafruit NeoPixel
  - Adafruit LIS3DH
  - Adafruit Unified Sensor
*/

#include <WiFi.h>
#include <esp_now.h>
#include <Wire.h>
#include <Adafruit_NeoPixel.h>
#include <Adafruit_LIS3DH.h>
#include <Adafruit_Sensor.h>

#define LED_PIN 5
#define LED_COUNT 16
#define SDA_PIN 8
#define SCL_PIN 9

Adafruit_NeoPixel pixels(LED_COUNT, LED_PIN, NEO_GRB + NEO_KHZ800);
Adafruit_LIS3DH lis = Adafruit_LIS3DH();

enum BeaconStatus : uint8_t {
  AVAILABLE = 0,
  BUSY = 1,
  AWAY = 2,
  FOCUS = 3
};

BeaconStatus currentStatus = AVAILABLE;

uint32_t colorForStatus(BeaconStatus status) {
  switch (status) {
    case AVAILABLE: return pixels.Color(0, 255, 0);
    case BUSY:      return pixels.Color(255, 0, 0);
    case AWAY:      return pixels.Color(255, 180, 0);
    case FOCUS:     return pixels.Color(0, 80, 255);
    default:        return pixels.Color(255, 255, 255);
  }
}

void setStatus(BeaconStatus status) {
  currentStatus = status;
  uint32_t color = colorForStatus(status);
  for (int i = 0; i < LED_COUNT; i++) {
    pixels.setPixelColor(i, color);
  }
  pixels.show();
}

BeaconStatus readTiltStatus() {
  lis.read();
  float x = lis.x_g;
  float y = lis.y_g;

  if (x > 0.55) return AVAILABLE;
  if (x < -0.55) return BUSY;
  if (y > 0.55) return AWAY;
  if (y < -0.55) return FOCUS;

  return currentStatus;
}

void setup() {
  pixels.begin();
  pixels.setBrightness(80);
  pixels.show();

  Wire.begin(SDA_PIN, SCL_PIN);

  if (!lis.begin(0x18)) {
    // Orange means LIS3DH not detected
    for (int i = 0; i < LED_COUNT; i++) {
      pixels.setPixelColor(i, pixels.Color(255, 80, 0));
    }
    pixels.show();
    while (1) delay(100);
  }

  lis.setRange(LIS3DH_RANGE_2_G);

  setStatus(AVAILABLE);
}

void loop() {
  BeaconStatus newStatus = readTiltStatus();

  if (newStatus != currentStatus) {
    setStatus(newStatus);
    delay(600);
  }

  delay(200);
}
