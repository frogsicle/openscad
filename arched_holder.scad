z = 10;
topr = 9; 

//handle width 27.5 mm
hr = 14.25;
//doll diameter 4.5 mm
rodr = 3.1;

module arch(r, h, taper=1){
    base = r * 2 + taper;
    top = r * 2 - taper;
    //cylinder(r1=r + taper / 2, r2=r - taper/2, h=h);
    cylinder(d1=base, d2=top, h=h);
    //translate([-r, -(r * 2)]) cube([r * 2, r * 2, h]);
    
    color("blue") translate([0, -r, h0]){
        linear_extrude(height = h, scale = top / base){ 
            square(base, center=true); 
        }
    }
    
}

difference(){
    union(){
        //translate([-topr, 0, 0]) cube([topr * 2, 30, z]);
        translate([0,21,0]) arch(topr, z);
        arch(hr + 4.5, z);
        }
    union(){ 
        translate([0, 0, -0.5]) arch(hr, z + 1);
        translate([-20, -50, -0.5]) cube([40, 40, z+1]);
        translate([5, 17.5, z -2.2]) rotate([90, 0, 225]){
            color("red") cylinder(r=rodr, h=topr * 2);
        }
    }
}



