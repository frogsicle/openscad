// parameters
xwell = 10;
ywell = 3;
zwell = 8;

x_between_wells = 20;
xy_rim = 2;
z_rim = 1;
n_wells = 5;

module comb(xwell=10, 
				ywell=3, 
				zwell=8, 
				x_between_wells = 20, 
				xy_rim = 2, 
				n_wells=5){
	//rim
	cube([xwell + (n_wells - 1) * x_between_wells + 2 * xy_rim, ywell + 2 * xy_rim, z_rim]);
	for (i = [1:n_wells]){
		echo (i);
//		x_pos = 1; // (i - 1) * x_between_wells + xy_rim;
		translate([(i - 1) * x_between_wells + xy_rim, xy_rim, z_rim]){
			cube([xwell, ywell, zwell]);
		}
	}
}

comb();