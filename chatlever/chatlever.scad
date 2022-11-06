// total radius (max is 3.5)
tot_rad = 22;
// inner radius (at least 1.5)
inner_rad = 15 / 2 + 2;
// half way radius
half_rad = (tot_rad + inner_rad) / 2;
// height
height = 2;
epsilon = 0.2;
angle = 35;

//  dowell and or toothpick radius
bar_rad = 3.7;

// how far the dowell center is from surface
protrude = 8;

// lever print height (width?)
print_height = 9;


module truss(){
    padding = 1.7;
    t_height = protrude + bar_rad + padding;
    width = (bar_rad + padding) * 2;
    depth = 3;
    translate([- width  / 2, - depth / 2, 0]) difference(){
            cube([width, depth, t_height]);  
            translate([ width / 2, 
                            - epsilon , 
                            t_height - bar_rad - padding]) {
                rotate([-90, 0, 0]) cylinder(r=bar_rad, h=width + 2 * epsilon, center=false);
        }
    }
}

module base(){
    difference(){
        cylinder(r=tot_rad, h=height);
        translate([0, 0, -epsilon]) cylinder(r=inner_rad, h=height + 2 * epsilon);
    }
    adj = cos(angle) * half_rad;
    opp = sin(angle) * half_rad;
    translate([-adj, opp, 0]) truss();
    translate([-adj, -opp, 0]) truss();
}


module lever(){
    // x is  support <-> button
    // y is lever(age)
    // z is sturdiness / final print heigt
    thickness = 2.5;
    adj = cos(angle) * half_rad;

    translate([0, protrude - thickness / 2, 0]) cube([adj - bar_rad - epsilon, thickness, print_height]);
    translate([-thickness / 2, 0,0]) cube([thickness, 38, print_height]);
    translate([adj, protrude, 0]) difference(){ 
        cylinder(r= bar_rad + 1.5, h=print_height);
        translate([0,0,-epsilon]) cylinder(r = bar_rad, h=print_height + 2 * epsilon);
       
    }
    
    
    }


base();
    // this is a test position, as it will be used, not printed.
    translate([0, -print_height / 2, 0]) rotate([90,0,180]) lever();
//lever(); 