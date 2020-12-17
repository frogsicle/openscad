include <frog_00.scad>;
include <frog_01.scad>;
include <frog_02.scad>;
include <frog_03.scad>;
include <frog_04.scad>;

module eye(inner, outer){
    rotate([0,75,0]) union(){
        difference(){
            sphere(outer);
            cylinder(r=outer + 1, h=outer+1);
            };
        sphere(inner);
        }
    };

module frogbits(){
    frog_00(2);
    color("blue") frog_01(3);
    frog_02(5);
    color("green") frog_03(6.5);
    frog_04(7.5);
    translate([8.6,-6,7.2]) eye(2.4, 2.8);
    translate([3.4,-9.5,7.2]) rotate([0, 0, 270]) eye(2.4, 2.8);
};

difference(){
    frogbits();
    union(){
        translate([15, 15, -1]) cube([8, 8, 20]);
        translate([-20, -20, -1]) cube([8, 8, 20]);
        };
    };
