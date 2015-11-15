//will need a few more parameters
mainh = 17;
outby = -6.2;
magnet_inwards = 1.4;
swidth = 6;
below_mags = 4.3;
rotation = asin(9.5/61);//measured 19/61?

//whole set up
module most(){
  cylinder(r=12,h=2);
  difference(){
  union(){
  translate([0,0,mainh/2+1]) for(i = [0,120,240]){
    rotate([0,0,i]) translate([0,outby,0]){
      //difference(){
      support(mainh, swidth, rotation=rotation);
        //translate([0,magnet_inwards,below_mags]) magnet(swidth=swidth, rotation=rotation);
      //}
    }
  }
  }
  translate([0,0,mainh/2+1])translate([0,outby,0]){
translate([0,magnet_inwards,below_mags]) magnet(swidth=swidth, rotation=rotation);
    }
  }
  //translate([0,outby + magnet_inwards,mainh/2+below_mags + 1]) magnet(rotation=rotation, swidth=swidth);
//  translate([0,0,mainh/2+1]) for(i = [0,120]){
//    rotate([0,0,i]) translate([0,outby,0]){
 //       translate([0,magnet_inwards,below_mags]) magnet(swidth=swidth, rotation=rotation);
//    }
//  }
}
// support structure
module support(mainh=16, swidth=10, rotation=25){
  translate([0,-3.1,0]) cube([swidth,3,15], center=true);
  rotate([rotation,0,0]){
    cube([swidth,6,16], center=true);
  }
}

// magnet
module magnet(x=swidth, y=2, z=9.6, swidth=10, rotation=25){
  rotate([rotation,0,0]){
    union(){
      cube([x,y,z], center=true);
      translate([0,-y/2-0.5,0]) color("red") cube([swidth, 1, 5], center=true);
    }
  }
}


difference(){
most();
//dummy cylindar for space needed by tube at bottom
color("blue") cylinder(r=2.1,h=8);
}
//dummy cylindar for space needed at top
//color("red") translate([0,0,mainh]) cylinder(h=1,r=4.3);