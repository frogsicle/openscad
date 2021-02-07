module teeth(){
    include <anglerfish_01.scad>;
}
module fish(){
    translate([-32, -28, 0 ]) color("blue") teeth();
    include <anglerfish_00.scad>;
}

difference(){
    translate([3, -1]) scale([0.35, 0.35, 1]) fish();
    union(){
        translate([0, 0, -0.1]) cylinder(r=10,h=14);
        translate([0, 0, 6]) rotate([-90, 0, 20]) cylinder(r=3.5, h=30);
    }
}
