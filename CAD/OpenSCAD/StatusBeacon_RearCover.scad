// Status Beacon v0.1 Rear Cover
// Four M2 screws recommended.

$fn = 48;

difference() {
    cube([80,2.4,25]);

    // Screw holes
    translate([8,1.2,5]) rotate([90,0,0]) cylinder(h=4,d=2.8,center=true);
    translate([72,1.2,5]) rotate([90,0,0]) cylinder(h=4,d=2.8,center=true);
    translate([8,1.2,20]) rotate([90,0,0]) cylinder(h=4,d=2.8,center=true);
    translate([72,1.2,20]) rotate([90,0,0]) cylinder(h=4,d=2.8,center=true);
}

// small pull lip
translate([31,2.4,1]) cube([18,3,3]);
