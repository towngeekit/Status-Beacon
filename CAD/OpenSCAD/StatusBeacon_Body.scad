// Status Beacon v0.1 Body
// Units: mm
// Open in OpenSCAD, press F6, then Export STL.
// Target outside size: 90 x 90 x 35 mm

$fn = 48;

outer_x = 90;
outer_y = 90;
outer_z = 35;
wall = 2.4;
corner_r = 8;

module rounded_box(size=[10,10,10], r=2) {
    hull() {
        for (x=[r, size[0]-r])
        for (y=[r, size[1]-r])
        for (z=[r, size[2]-r])
            translate([x,y,z]) sphere(r=r);
    }
}

module screw_boss(x,y,h=11,od=7,id=2.6) {
    translate([x,y,0])
    difference() {
        cylinder(h=h,d=od);
        translate([0,0,-1]) cylinder(h=h+2,d=id);
    }
}

difference() {
    rounded_box([outer_x,outer_y,outer_z], corner_r);

    // Hollow interior
    translate([wall,wall,wall])
        rounded_box([outer_x-wall*2, outer_y-wall*2, outer_z], corner_r-2);

    // Front diffuser window
    translate([7,-1,7])
        cube([76, wall+4, 22]);

    // Rear cover opening
    translate([5, outer_y-wall-0.2, 5])
        cube([80, wall+1, 25]);

    // USB-C opening on right side
    translate([outer_x-3, 36, 11])
        cube([6, 18, 9]);

    // Small slide switch opening on left side
    translate([-3, 38, 11])
        cube([6, 14, 6]);
}

// Hidden screw bosses
translate([13,13,wall]) screw_boss(0,0);
translate([77,13,wall]) screw_boss(0,0);
translate([13,77,wall]) screw_boss(0,0);
translate([77,77,wall]) screw_boss(0,0);

// Battery tray rails for approx 70 x 45 x 8 mm LiPo
translate([12,38,wall]) cube([66,2,4]);
translate([12,62,wall]) cube([66,2,4]);

// ESP32-C3 SuperMini standoffs
translate([18,22,wall]) screw_boss(0,0,6,5,2.0);
translate([45,22,wall]) screw_boss(0,0,6,5,2.0);

// Charger module shelf
translate([58,36,wall]) cube([24,18,2]);

// LED carrier ledge behind diffuser
translate([12,6,17]) cube([66,3,3]);
