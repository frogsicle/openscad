//one more cabel holder
cabel_x = 5;
support_x = 4;
support_z = 3.5;
screw_r1 = 3/2.1;
screw_r2 = 6/2;
screw_h = 2;
cabel_y = 10;
n_cabels = 3;
lip_y = 2;
lip_z = 6;
mount_y = 2;
mount_z = 10.5;
// derived parameters
total_x =  (support_x + cabel_x) * n_cabels + support_x;


module support(){
  // main support
  cube([support_x, cabel_y, support_z]);
  // lip
  translate([0,cabel_y,0]) cube([support_x, lip_y, lip_z]);
}

module screwhead(){
  translate([0,0,mount_y - screw_h + 1]) cylinder(r1=screw_r1, r2=screw_r2, h=screw_h );
  cylinder(r=screw_r1, h=mount_y+1);
}

module decorum(){
  translate([0,0,mount_z]){
    cube([support_x,mount_y,mount_z/2]);
    translate([total_x/4,0,0]) cube([total_x/2,mount_y,mount_z/4]);
    translate([total_x - support_x,0,0]) cube([support_x,mount_y,mount_z/2]);
    translate([total_x*3/5,mount_y/2,mount_z/2.2]){ 
      rotate([0,30,0]) cube([support_x,mount_y,mount_z/1.5], center=true);
	 }
    translate([total_x*2/5,mount_y/2,mount_z/2.2]){
      rotate([0,-30,0]) cube([support_x,mount_y,mount_z/1.5],center=true);
    }
  }
}


// main
for(i=[0:n_cabels]){
  translate([i * (support_x + cabel_x),0,0]) support();
}
difference(){
  cube([total_x, mount_y, mount_z]);
  for(i=[1:2:3]){
  translate([total_x/4 * i,-0.99,mount_z * 3/5]){
    rotate([-90,0,0]) screwhead();
    }
  }
}
//decorum
translate([0,0,0]) decorum();
//screwhead()