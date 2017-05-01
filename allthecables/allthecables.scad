// screw sizing
r1=1;
r2=2;

// cable sizing
rsm = 5 / 2;
rlrg = 7.5 / 2;
shift = 1.5;

// general sizing
between = 2;
h=5;

module clip(){
    difference(){
        translate([-shift, -(rsm + between / 2), 0]) 
        cube([rlrg + shift + between / 2, 2 * rsm + 2 * rlrg + 3 * between, h]);
        union(){
            cylinder(h=h,r=rsm + .1 );
            translate([0,rsm + rlrg + between,0]) cylinder(h=h,r=rlrg + .1);
        }
    }
}

module wallhole(x=rlrg + shift + between / 2, y=between, z=10, r1=r1, r2=r2){
    difference(){
        cube([x,y,z]);
        translate([x/2,0,z - between / 2 - r2 ]) rotate([-90,0,0]) cylinder(h=y+0.01, r1=r1, r2=r2);
        }
    }


clip();
translate([rlrg + between/2,  rsm + 2 * rlrg + 2.5 * between, 0]) rotate([0,0,180]) wallhole();
