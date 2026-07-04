# Status Beacon

**Status Beacon** is a Town Geek smart presence indicator powered by ESP32.

## Status Colors

- Green: Available
- Red: Busy
- Yellow: Away
- Blue: Focus / Do Not Disturb
- Purple: Meeting
- White: Offline

## Project Goals

- Rechargeable USB-C desktop status light
- ESP32-C3 based firmware
- Wireless sync using ESP-NOW
- Tilt/rotation status control
- Microsoft Teams and Outlook integration
- Home Assistant / MQTT support
- 3D-printable enclosure
- Future custom PCB

## Firmware

Firmware name: **BeaconOS**

## Repository Structure

```text
CAD/             3D models, STL, STEP, renders
Electronics/     KiCad, schematics, Gerbers, BOM
Firmware/        ESP32 BeaconOS firmware
Software/        Beacon Control desktop app
Docs/            Build guides and API docs
Images/          Photos, mockups, renders, branding
Manufacturing/   Labels, packaging, QC checklist
BOM/             Parts lists
Releases/        Versioned release packages
```
