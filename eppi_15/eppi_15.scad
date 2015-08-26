//will need a few more parameters
mainh = 18;
outby = -8;
swidth = 10;

cylinder(r=15,h=3);
translate([0,0,mainh/2+1]) for(i = [0,120,240]){
  rotate([0,0,i]) translate([0,outby,0]){
    difference(){
      support(mainh, swidth);
      translate([0,1,3]) magnet();
    }
  }
}
translate([0,outby + 1,mainh/2+4]) magnet();

module support(mainh=16, swidth=10){
  translate([0,-3.5,0]) cube([swidth,6,15], center=true);
  rotate([25,0,0]){
    cube([10,6,16], center=true);
  }
}

module magnet(x=6, y=4, z=12, swidth=10){
  rotate([25,0,0]){
    union(){
      cube([x,y,z], center=true);
      translate([0,-y/2+0.5,0]) cube([swidth, 1, 4], center=true);
    }
  }
}