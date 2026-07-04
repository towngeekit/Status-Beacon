// Status Beacon v0.1 LED Carrier
// Holds a 16 LED WS2812B ring behind the diffuser.
// Adjust ring screw holes if your ring is different.

$fn = 64;

difference() {
    cube([64,3,64]);

    // Main light opening
    translate([32,1.5,32]) rotate([90,0,0]) cylinder(h=5,d=50,center=true);

    // LED ring screw holes
    translate([32,1.5,8]) rotate([90,0,0]) cylinder(h=5,d=2.6,center=true);
    translate([32,1.5,56]) rotate([90,0,0]) cylinder(h=5,d=2.6,center=true);
    translate([8,1.5,32]) rotate([90,0,0]) cylinder(h=5,d=2.6,center=true);
    translate([56,1.5,32]) rotate([90,0,0]) cylinder(h=5,d=2.6,center=true);
}
