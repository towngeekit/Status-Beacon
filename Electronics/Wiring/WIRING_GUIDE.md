# Status Beacon v0.1 Wiring Guide

## ESP32-C3 to WS2812B Ring

| WS2812B | ESP32-C3 |
|---|---|
| DIN | GPIO 5 |
| 5V | 5V / VIN |
| GND | GND |

Recommended:
- Add a 330 ohm resistor between GPIO 5 and DIN.
- Add a 470-1000 uF capacitor across LED 5V and GND if flickering occurs.

## ESP32-C3 to LIS3DH

| LIS3DH | ESP32-C3 |
|---|---|
| VCC | 3.3V |
| GND | GND |
| SDA | GPIO 8 |
| SCL | GPIO 9 |

## Battery and Charger

- LiPo battery connects to TP4056 B+ and B-
- TP4056 OUT+ goes through the power switch to ESP32/LED power
- TP4056 OUT- goes to common GND
- USB-C port on TP4056 is used for charging

## Safety

Use a protected LiPo charger/protection board.
Do not short the LiPo battery.
Test charging outside the enclosure first.
