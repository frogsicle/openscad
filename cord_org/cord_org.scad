
module rim(inner_cube, thickness=2){
  //cube([48, 33, 15]);
  difference(){
      cube(inner_cube + [thickness * 2, thickness * 2, 0]);
      translate([thickness, thickness, -0.5 * thickness]) cube(inner_cube + [0, 0, thickness]);
      }
}

module screw_tab(x, y, z){
   block_x = x - y / 2;  // because round end extends by radius
   
   cube([block_x, y, z]);
   translate([block_x, y/2, 0]) cylinder(r = y / 2, h=z);
}


module screw(r1, r2, h, h_head){
    shaft_h = h - h_head;

    if (shaft_h > 0){
        cylinder(r=r2, h=shaft_h);
    }else{
        h_head = h;
    }
    translate([0, 0, shaft_h]) cylinder(r1=r2, r2=r1, h=h_head);
}

module one_screw_tab(x, y, z, h_head=2.5, r1=3, r2=1.5){
    difference(){
        screw_tab(x, y, z);
        translate([x - y/2, y / 2, -0.01]) screw(r1, r2, z + 0.02, h_head);
    }
}
