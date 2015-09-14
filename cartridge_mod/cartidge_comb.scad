
module comb(xwell=10, 
				ywell=4.3, 
				zwell=12, 
				x_between_wells = 17, 
				xy_rim = 2,
				ztaper = 2.5, 
            z_rim = 1,
				n_wells=5){
	//rim
  rotate([90,0,0]){
	cube([xwell + (n_wells - 1) * x_between_wells + 2 * xy_rim, ywell + 1 * xy_rim, z_rim]);
	for (i = [1:n_wells]){
		echo (i);
//		x_pos = 1; // (i - 1) * x_between_wells + xy_rim;
		translate([(i - 1) * x_between_wells + xy_rim, 0, z_rim]){
			cube([xwell, ywell, zwell - ztaper]);
		}
		// intersection of squished cylinder and non-taperd cube
		intersection(){ 
		 translate([(i-1) * x_between_wells + xy_rim,0,zwell -ztaper + z_rim]){
        rotate([0,90,0]) scale([ztaper/ywell,1,1]){ 
          cylinder(r=ywell,h=xwell);
          }
		  }
     		translate([(i - 1) * x_between_wells + xy_rim, 0, z_rim]){
			cube([xwell, ywell, zwell]);
		}  
		}
	 }
  }
}

// seals
comb(n_wells=1);

// loading wells
//translate([0,30,0]) comb(xwell=7, zwell=6, ztaper=0);