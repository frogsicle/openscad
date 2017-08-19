w=18; //y
d=10; //z
extra_d = 4; 
h1=3; //x main
h2=3; // against glass
h3=3.5; // against wood (down)
gen=3;

r_sub = 3.5;

difference(){
    union(){
        cube([h1,w,d + extra_d]);
        translate([-h3,0,0]) cube([h1+h2+h3,w,gen]);
        translate([-h3,0,0]) cube([h1+ h3,w,d]);
    }
    union(){
        translate([-r_sub - 1,0,d - r_sub - 2]) rotate([-90,0,0]) cylinder(r=r_sub,h=w+1);
        scale([1,1,1.5]) translate([-h3-0.1,w/2,1]) rotate([0,90,0]) cylinder(r=5,h=h1+h2+h3+1);
    }
}

