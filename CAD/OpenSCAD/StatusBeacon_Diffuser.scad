// Status Beacon v0.1 Frosted Front Diffuser
// Print in translucent/frosted PLA or PETG.

$fn = 48;

module rounded_box(size=[10,10,10], r=2) {
    hull() {
        for (x=[r, size[0]-r])
        for (y=[r, size[1]-r])
        for (z=[r, size[2]-r])
            translate([x,y,z]) sphere(r=r);
    }
}

difference() {
    rounded_box([78,4,24], 5);
    // Rear inset for easier press fit
    translate([3,2,3]) rounded_box([72,3,18], 3);
}
