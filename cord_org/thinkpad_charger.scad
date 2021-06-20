include<cord_org.scad>


x_in = 48;
thickness = 2.5;
x_out = x_in + thickness * 2;
x_slot = 27;
z = 20;
height = 33;
bottom = 5;

difference(){
    union(){
        rim([x_in, height, z], thickness);
        // bottom piece only
        rim([x_in - bottom * 2, height - bottom * 2, thickness], thickness + bottom);
    }
    translate([x_in / 2 - x_slot / 2 + thickness, bottom + thickness, -0.5]){
        cube([x_slot, height + 7, z + 1]);
    }
}

translate([x_out, 0, 20]){
    rotate([-90, 0, 0]) one_screw_tab(20, z, 2);
}

rotate([90, 0, 180]) one_screw_tab(20, z, 2);


