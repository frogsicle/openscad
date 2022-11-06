//include <frog_soap_dish_04.scad>
//include <frog_soap_dishB_14.scad>
//include <frog_soap_dishB_14extra.scad>
//include <frog_soap_dishB_15neg.scad>

module frog_soap_dishB_14(height) 
{
    linear_extrude(height) offset(0.001) import("frog_soap_dishB_14.svg");
}

module frog_soap_dishB_15neg(height) 
{
    linear_extrude(height) offset(0.001) import("frog_soap_dishB_15neg.svg");
}

module frog_soap_dishB_14extra(height) 
{
    linear_extrude(height) offset(0.001) import("frog_soap_dishB_14extra.svg");
}
module frog(){
    difference(){
        frog_soap_dishB_14(10);
        frog_soap_dishB_15neg(15);
    }
    frog_soap_dishB_14extra(14);
}

difference(){
    frog();
    translate([40, 34, 15]) color("green") scale([1.5, 1.1, 0.35]) sphere(36);
}
translate([25, 31.3]) rotate([0,0,33]) scale([1.5, 0.75, 1]) cylinder(h=2, r=7);