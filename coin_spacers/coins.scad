//23.25 mm, thickness 2.33

module coin(r=23.25/2, h=2.33, rim=3.5, halves=0, wholes=1){
  difference(){
    cylinder(r=r, h=h);
    cylinder(r=(r-rim), h=h);
  }
}

// 1 Euro
//coin();
//translate([0,30,0]) coin();
// 2 Euro
//translate([0,30,0]) coin(r=25.75/2, h=2.2);
// 50 Cent
//translate([30,0,0]) coin(r=24.25/2, h=2.38);

//bike washer
coin(r=19/2, h=2.33, rim=4.1);