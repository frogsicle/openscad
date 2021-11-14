include<cord_org.scad>


x_in = 66;
thickness = 2.5;
x_out = x_in + thickness * 2;
x_slot = 27;
//z = 20;
//height = 41;
bottom = 5;
//multi (y needs more buffer, little space before outlets begin)
z = 11;
height=43;

module two_screw_tab(x, y, z, h_head=2.5, r1=3.1, r2=1.6){
    difference(){
        screw_tab(x, y, z);
        union(){
            translate([x * 2/3, y / 2, -0.01]) screw(r1, r2, z + 0.02, h_head);
            translate([x * 1/3, y / 2, -0.01]) screw(r1, r2, z + 0.02, h_head);
        }
    }
}


module whole(b_supp=true){

difference(){
    union(){
        rim([x_in, height, z], thickness);
        // bottom piece only
        if (b_supp){
            rim([x_in - bottom * 2, height - bottom * 2, thickness], thickness + bottom);
        }
    }
    // opening away from attachment surface, 
    // e.g. for cord to come through
    translate([x_in / 2 - x_slot / 2 + thickness, bottom + thickness, -0.5]){
        cube([x_slot, height + 7, z + 1]);
    }
}

translate([x_out, 0, z]){
    rotate([-90, 0, 0]) two_screw_tab(26, z, 2);
}

rotate([90, 0, 180]) two_screw_tab(26, z, 2);
}

module left(b_supp=true){
epsilon = 0.05;
difference(){
    whole(b_supp);
    translate([x_out / 2, -epsilon, -epsilon]) cube([x_out + epsilon, height + thickness * 2 + epsilon, z + epsilon]);
}
}

//left();
//mirror([1,0,0]) left();
//left(false);


//left(true);
mirror([1,0,0]) left(true);
//two_screw_tab(40,20,100);