include <StatusBeacon_LightCube_Common.scad>

// StatusBeacon_LightCube_Diffuser.scad
// Print in translucent/frosted PLA or PETG.

difference() {
    rounded_box([78,4,24], 5);

    // rear inset for easier press fit
    translate([3,2,3])
        rounded_box([72,3,18], 3);
}
