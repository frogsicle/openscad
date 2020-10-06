lower = 54;

//    /|
//   /_|

// oposite = height
// angle = 60
// soh cah toa, tangent(60) = o/a
// a = o / tangent(60);

//higher = 80;
height = 18;
a = height / tan(60);
higher = lower + a * 2;
echo (higher);


module pg(){
    polygon([[0, - lower / 2], 
            [0, lower / 2],
            [height, higher / 2],
            [height, - higher / 2]]);
}

module ph(){
    rotate([0, 90, 0]) 
    linear_extrude(height=1, center=true) pg();
}

for (i=[0:2]){
translate([0, 0, height]) rotate([0, 0, 120 * i]) ph();
}
