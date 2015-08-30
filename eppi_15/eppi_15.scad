//will need a few more parameters
mainh = 16.5;
outby = -7;
magnet_inwards = 2.2;
swidth = 8;
below_mags = 3;
rotation = asin(19/61);

//whole set up
cylinder(r=13,h=2);
translate([0,0,mainh/2+1]) for(i = [0,120,240]){
  rotate([0,0,i]) translate([0,outby,0]){
    difference(){
      support(mainh, swidth, rotation=rotation);
      translate([0,magnet_inwards,below_mags]) magnet(swidth=swidth, rotation=rotation);
    }
  }
}
translate([0,outby + magnet_inwards,mainh/2+below_mags + 1]) magnet(rotation=rotation, swidth=swidth);

// support structure
module support(mainh=16, swidth=10, rotation=25){
  translate([0,-3.1,0]) cube([swidth,4.5,15], center=true);
  rotate([rotation,0,0]){
    cube([swidth,6,16], center=true);
  }
}

// magnet
module magnet(x=4, y=2, z=9.6, swidth=10, rotation=25){
  rotate([rotation,0,0]){
    union(){
      cube([x,y,z], center=true);
      translate([0,-y/2-0.5,0]) color("red") cube([swidth, 1, 4], center=true);
    }
  }
}
//dummy cylindar for space needed by tube at bottom
color("blue") cylinder(r=2.5,h=8);