//difference(){
WIDTH=26;
difference(){
	color("green")cube([WIDTH+2,15,5], center=true);
   translate([0,-6,0])
	cube([WIDTH,23,3], center=true);
   translate([-2,0,0])
   cube([16,23,3], center=true);
   translate([-4,8,0])
   cube([9,10,5], center=true);
}
//translate([0,0,50]);
//cube([100,100,100], center=true);}