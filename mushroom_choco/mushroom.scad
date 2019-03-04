module face(){
    include <mushroom00.scad>;
}
module eyes(){
    include <mushroom01.scad>;
}
module cap(){
    include <mushroom02.scad>;
}
module spots(){
    include <mushroom03.scad>;
}

translate([0,-9,0]) face();
translate([0,-7,0]) eyes();
cap();
spots();