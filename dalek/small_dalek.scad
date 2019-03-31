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


notmm = 10;
dalek_base(notmm);

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

module full_eggs(x, y, z_offset, h=6, inset=0, 
                  r=0.7, step=1.8, notmm=10){
    tilt_eggs(atan((y / 2) / (h)),
             -atan((x / 2) / (h)),
             x - inset,
             y - inset,
             z_offset, r, step, notmm);
}

//module tilt_eggs_from(x, y, z_offset, 
//tilt_eggs(atan(0.25), -atan(0.125), 1.5, 2.5, 0.5);
//tilt_eggs(atan(0.25), atan(0.125), -1.5, 2.5, 0.5);

tilt_eggs(atan(0.25/6), -atan(3.5/2/6), 3.5, 0.5, 1.2);
//tilt_eggs(atan(0.25/6), -atan(3.5/2/6), 2, 0, 0.5);
color("red") full_eggs(3.5, .5, 1.2);
color("red") full_eggs(-3.5, .5, 1.2);
color("red") full_eggs(1.5, 2.5, 1.2);
color("red") full_eggs(-1.5, 2.5, 1.2);


translate([notmm * 1.5, notmm * 1, notmm * 6]) color("blue") cube();

echo(atan(1.5/6));
echo("neg");
echo(atan(-0.2));