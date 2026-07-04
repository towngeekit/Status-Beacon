include <StatusBeacon_LightCube_Common.scad>

// StatusBeacon_LightCube_Body.scad
// Exterior: 90 x 90 x 35 mm
// Print: PETG or PLA+, 0.20mm layer, 3 walls

outer_x = 90;
outer_y = 90;
outer_z = 35;
wall = 2.4;
corner_r = 8;

difference() {
    rounded_box([outer_x,outer_y,outer_z], corner_r);

    // hollow interior
    translate([wall,wall,wall])
        rounded_box([outer_x-wall*2, outer_y-wall*2, outer_z], corner_r-2);

    // front diffuser window
    translate([7,-1,7])
        cube([76, wall+4, 22]);

    // rear cover opening
    translate([5, outer_y-wall-0.2, 5])
        cube([80, wall+1, 25]);

    // USB-C opening on right side
    translate([outer_x-3, 36, 11])
        cube([6, 18, 9]);

    // slide switch opening on left side
    translate([-3, 38, 11])
        cube([6, 14, 6]);
}

// rear cover screw bosses
screw_boss(13,13,wall,11,7,2.6);
screw_boss(77,13,wall,11,7,2.6);
screw_boss(13,77,wall,11,7,2.6);
screw_boss(77,77,wall,11,7,2.6);

// battery tray rails for approx 70 x 45 x 8 mm LiPo
translate([12,38,wall]) cube([66,2,4]);
translate([12,62,wall]) cube([66,2,4]);

// ESP32-C3 SuperMini standoffs
screw_boss(18,22,wall,6,5,2.0);
screw_boss(45,22,wall,6,5,2.0);

// charger board shelf near USB-C opening
translate([58,36,wall]) cube([24,18,2]);

// LED carrier ledge behind diffuser
translate([12,6,17]) cube([66,3,3]);
