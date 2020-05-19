module wat(){
    include<filter_tri_stand_27.scad>;
}
module wtf(){
    include<filter_tri_stand_60.scad>;
}

wat();
color("blue") translate([0,5.7,0]) wtf();

