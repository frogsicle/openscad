// total radius (max is 3.5)
tot_rad = 18;
// inner radius (at least 1.5)
inner_rad = 15 / 2 + 2;
// half way radius
half_rad = (tot_rad + inner_rad) / 2;
// height
height = 2;
epsilon = 0.2;

//  dowell and or toothpick radius
bar_rad = 3;

// how far the dowell center is from surface
protrude = 8;

module truss(){
    t_height = protrude + bar_rad + 1;
    width = 8;
    depth = 3;
    translate([- width  / 2, - depth / 2, 0]) difference(){
            cube([width, depth, t_height]);  
            translate([ width / 2, 
                            - epsilon , 
                            t_height - bar_rad - 1]) {
                rotate([-90, 0, 0]) cylinder(r=bar_rad, h=width + 2 * epsilon, center=false);
        }
    }
}

module base(){
    difference(){
        cylinder(r=tot_rad, h=height);
        translate([0, 0, -epsilon]) cylinder(r=inner_rad, h=height + 2 * epsilon);
    }
    angle = 30;
    adj = cos(angle) * half_rad;
    opp = sin(angle) * half_rad;
    translate([-adj, opp, 0]) truss();
    translate([-adj, -opp, 0]) truss();
}


module lever(){
    // x is  support <-> button
    // y is lever(age)
    // z is sturdiness / final print heigt
    print_height = 10;
    thickness = 2;
    translate([0, protrude - thickness / 2, 0]) cube([half_rad - bar_rad - epsilon, thickness, print_height]);
    cube([thickness, 40, print_height]);
    translate([half_rad, protrude, 0]) difference(){ 
        cylinder(r= bar_rad + 1.5, h=print_height);
        translate([0,0,-epsilon]) cylinder(r = bar_rad, h=print_height + 2 * epsilon);
       
    }
    
    
    }


base();
translate([-50, 0, 0]) lever();