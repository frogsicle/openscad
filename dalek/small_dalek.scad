module dalek(){
import(
    "Doctor_Who_New_Series_Dalek_Body/dalek1.stl", 
    convexity=3
    );
}
module arm(){
    difference(){
        cylinder(h=5, r=3);
        translate([0, 0, -1]) color("red") cylinder(h=7, r=2);
    }
}


module dalek_base(x=10){
    linear_extrude(height=6 * x, scale=0.5){
        polygon([[-4 * x, -1 * x], 
                [-3 * x, 2 * x], 
                [0 * x, 3 * x], 
                [3 * x, 2 * x], 
                [4 * x, -1 * x]]);
    }
}

module eggs(n=3, r=1.5, step=4, x=10){
    for (i=[0:step * x:step * (n - 1) * x]){
        translate([0, 0, i]) sphere(r=r * x);
    }
}



module tilt_eggs(rotx, roty, x_offset, y_offset, 
                 z_offset, r=0.7, step=1.8, notmm=10){
    translate([notmm * x_offset, notmm * y_offset, 0]){
        rotate([rotx, roty, 0]){
            translate([0, 0, notmm * z_offset]) {
                eggs(r=r, step=step);
            }
        }
    }
}

module full_eggs(x, y, z_offset, h=6, inset=0.1, 
                  r=0.7, step=1.8, notmm=10){
    tilt_eggs(atan((y / 2) / (h)),
             -atan((x / 2) / (h)),
             x - (inset * sign(x)),
             y - (inset * sign(y)),
             z_offset, r, step, notmm);
}



module appendage(r2, notmm=10){
    union() {
        cube([notmm, notmm, notmm ], center=true);
        color("grey") rotate([-90, 0, 0]) cylinder(r=notmm/2.2, h=notmm * 0.8);
        color("black") rotate([-90, 0, 0]) cylinder(r=notmm/4, h=notmm);

    }
}
module torso(notmm=10, r2=1.9){
    cylinder(h=notmm * 1.6, r1=notmm * (r2 + .2), r2=notmm*r2);

    translate([0, 0, notmm * 1.9]) cylinder(h=notmm * .2, r=notmm * r2);
    translate([0, 0, notmm * 2.4]) cylinder(h=notmm * .2, r=notmm * r2);
    color("blue") cylinder(h=notmm * 3.2, r=notmm * (r2 - .2));

    // cap
    translate([0, 0, notmm * 2.7]) {
        difference(){
            sphere(r=notmm * r2);
            translate([0, 0, -notmm*3.8]) cylinder(h=notmm * 4, r=notmm*2);
        }
        //probosis
        translate([0, notmm*(r2 - .5), notmm * .7]) {
            appendage(r2);
        }

    }
    //arms
    translate([notmm * r2/2, notmm * (r2 - .3), notmm*.8]) appendage(r2);
    translate([-notmm * r2/2, notmm * (r2 - .3), notmm*.8]) appendage(r2);
    translate([0, notmm * (r2 - .3), notmm*.8]) cube([notmm * 2, notmm, notmm*.6], center=true);
}

module dalek_facade(notmm=10){
    // putting it together
    dalek_base(notmm);

    color("red") full_eggs(3.5, .5, 1.2);
    color("red") full_eggs(-3.5, .5, 1.2);
    color("red") full_eggs(1.5, 2.5, 1.2);
    color("red") full_eggs(-1.5, 2.5, 1.2);

    translate([0, -0.5 * notmm, notmm * 6]) torso();
}

notmm = 10;
difference(){
    dalek_facade(notmm);
    translate([notmm* -4, -notmm * 5.5, -.1]) cube([notmm*8, notmm * 5, notmm * 15]);
}

