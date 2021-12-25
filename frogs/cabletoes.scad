module toes(){
include<toes.scad>;
}

intersection(){
    difference(){
        translate([5,0,-17]) sphere(30);
        translate([5,14,-1]) rotate([90,0,30]) cylinder(r=10, h=28);

    }
toes();
}

