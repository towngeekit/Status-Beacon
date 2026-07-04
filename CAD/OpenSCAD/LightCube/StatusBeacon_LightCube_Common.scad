// Status Beacon Light Cube v0.1
// Common OpenSCAD helpers
// Units: mm

$fn = 64;

module rounded_box(size=[10,10,10], r=2) {
    hull() {
        for (x=[r, size[0]-r])
        for (y=[r, size[1]-r])
        for (z=[r, size[2]-r])
            translate([x,y,z]) sphere(r=r);
    }
}

module screw_boss(x,y,z=0,h=10,od=7,id=2.6) {
    translate([x,y,z])
    difference() {
        cylinder(h=h,d=od);
        translate([0,0,-1]) cylinder(h=h+2,d=id);
    }
}
