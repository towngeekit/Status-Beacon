# Status Beacon v0.1 Prototype Pack

Town Geek Status Beacon is an ESP32-powered smart presence indicator.

This v0.1 package is designed around these prototype parts:

| Part | Choice |
|---|---|
| MCU | ESP32-C3 SuperMini USB-C |
| LEDs | 16-LED WS2812B RGB ring |
| Motion | LIS3DH accelerometer |
| Battery | 3.7V 2500mAh LiPo |
| Charger | USB-C TP4056 LiPo charger/protection board |
| Switch | Mini slide switch |

## Included

- Parametric OpenSCAD enclosure files
- Prototype BOM
- Wiring notes
- BeaconOS starter firmware
- Assembly guide
- Print guide

## External Size

Target enclosure: **90 × 90 × 35 mm**

## Main Files

- `CAD/OpenSCAD/StatusBeacon_Body.scad`
- `CAD/OpenSCAD/StatusBeacon_Diffuser.scad`
- `CAD/OpenSCAD/StatusBeacon_RearCover.scad`
- `CAD/OpenSCAD/StatusBeacon_LEDCarrier.scad`
- `Firmware/BeaconOS/BeaconOS.ino`
- `Electronics/BOM/prototype_bom.csv`
- `Docs/Assembly/ASSEMBLY_GUIDE.md`
