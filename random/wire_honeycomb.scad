THICK = 17;
DEEP = 30;
LONG = 20;

module kikicageclip(thick,long,deep){
	difference(){
		translate([1,0,0])
		//cube([thick, deep, long]);
		rotate([90,0,90]){
		//honeycomb(thick+6, long+5,8, 22, 4);
		translate([0,1,5])

			color("blue")honeycomb(thick+6, long,4, 24, 3.5);

		}
}rotate([90,0,90]){
		translate([20,10,-20]);
		//honeycomb(thick, long, 5, 19, 2.5);
	}

}



module hc_hexagon(size, height) {
box_width = size/1.75;
for (r = [-60, 0, 60]) rotate([0,0,r]) cube([box_width, size, height],
true);
}
module hc_column(length, height, cell_size, wall_thickness) {
no_of_cells = floor(1 + length / (cell_size + wall_thickness)) ;
for (i = [0 : no_of_cells]) {
translate([0,(i * (cell_size + wall_thickness)),0])
hc_hexagon(cell_size, height + 1);
}
}
module honeycomb (length, width, height, cell_size, wall_thickness) {
no_of_rows = floor(1.75 * length / (cell_size + wall_thickness)) ;
tr_mod = cell_size + wall_thickness;
tr_x = sqrt(3)/2 * tr_mod;
tr_y = tr_mod / 2;
off_x = -1 * wall_thickness / 2;
off_y = wall_thickness / 2;
difference(){
cube([length, width, height]);
for (i = [0 : no_of_rows]) {
translate([i * tr_x + off_x, (i % 2) * tr_y + off_y, (height) / 2])
hc_column(width, height, cell_size, wall_thickness);
}
}
}
//honeycomb(length, width, height, cell_size, wall_thickness);

//difference(){
//translate([2,0,-15])
kikicageclip(THICK,DEEP,LONG);
//rotate([0,90,0]){

//honeycomb(20, 20, 5, 6, 2.5);}

//}