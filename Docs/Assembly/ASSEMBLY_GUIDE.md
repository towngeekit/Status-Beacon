# Status Beacon v0.1 Assembly Guide

## Print Parts

Print these first:

- `StatusBeacon_Body.scad`
- `StatusBeacon_Diffuser.scad`
- `StatusBeacon_RearCover.scad`
- `StatusBeacon_LEDCarrier.scad`

Export each SCAD file as STL from OpenSCAD.

## Suggested Print Settings

### Body
- Material: PETG or PLA+
- Layer height: 0.20 mm
- Walls: 3
- Infill: 15-20%

### Diffuser
- Material: Translucent/frosted PLA or PETG
- Layer height: 0.16-0.20 mm
- Infill: 30-100%

## Assembly Steps

1. Install the diffuser into the front opening.
2. Mount the WS2812B ring to the LED carrier.
3. Fit LED carrier behind the diffuser.
4. Mount ESP32-C3 inside the case.
5. Mount LIS3DH flat inside the case.
6. Install the TP4056 charger module near the USB-C opening.
7. Place the LiPo battery in the tray.
8. Wire the power switch.
9. Upload BeaconOS firmware.
10. Test all four status colors.
11. Attach rear cover with M2 screws.

## Notes

This is a prototype design. Small adjustments may be needed depending on the exact module sizes you buy.
