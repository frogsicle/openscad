h = 80;
big_r = 12.6; // on x axis
sm_r = 9.6;  // on y axis

module isosceles_right_triangle(leg){
    polygon(
        points=[[0, 0],
                [0, leg],
                [leg, 0]]);
    }

module ir_tri_extrude(h, leg){
    linear_extrude(height=h) isosceles_right_triangle(leg);
    }

module ring(r_out, r_in, h){
    translate([0, 0, -h/2]) difference(){
        cylinder(r=r_out, h=h);
        translate([0, 0, h * -0.1]) cylinder(r=r_in, h=h* 1.2);
        }
    }

module zip_ring(r_in, z_offset, h=3){
        translate([0, 0, z_offset]) ring(r_out=r_in + 12, r_in=r_in, h=h);
    }

module fit_pipe_n_zip(r, h, rel_z_offset=0.87, rel_z_offset2=0.45,
                        zip_space1=4, zip_space2=5, zip_h1=6, zip_h2=8){

        union(){
            cylinder(r=r, h=h * 2);
            zip_ring(r_in=r + zip_space1, z_offset=h * rel_z_offset, h=zip_h1);
            zip_ring(r_in=r + zip_space1, z_offset=h * rel_z_offset2, h=zip_h1);
            zip_ring(r_in=r + zip_space2, z_offset=h * rel_z_offset, h=zip_h2);
            zip_ring(r_in=r + zip_space2, z_offset=h * rel_z_offset2, h=zip_h2);
            };
        }
  
module fin_brace(){       
    difference(){
        translate([big_r * 0.33, big_r * 0.33, -big_r * 1.7 / 2]) ir_tri_extrude(big_r * 1.7, h);
        union(){
            // empty middle
            translate([big_r * 1.5, big_r * 1.5, -big_r * 1.1]) ir_tri_extrude(big_r * 2.2, h /2.5 );
            // y axis
            rotate([0, 90, 0]) fit_pipe_n_zip(r=sm_r, h=h);
            // x axis
            rotate([-90, 0, 0]) fit_pipe_n_zip(r=big_r, h=h);
            }
        }
    }

// uncomment intersection bits to get a quicker fit test
//intersection(){
fin_brace();
//translate([0, 0, -big_r]) ir_tri_extrude(big_r * 2, 40);
//}
