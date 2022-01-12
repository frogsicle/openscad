//difference(){
WIDTH=26;
difference(){
	color("green")cube([WIDTH+2,18,5], center=true);
   translate([0,-6,0])
	cube([WIDTH,25,3], center=true);
//   translate([WIDTH/2 - 2,0,0])
//   cube([4,25,3], center=true);
   translate([WIDTH/2 - 2.5,5,0])
   //cube([9,10,5], center=true);
    cylinder(r=6,h=10,center=true);
}
//translate([0,0,50]);
//cube([100,100,100], center=true);}