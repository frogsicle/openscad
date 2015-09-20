module puzzle_cut(r=5,z=3, width=1,length=40,out_by=1.3){
  subr = r * 0.6;
  difference(){
    union(){
      cube([length,width,z]);
      translate([length/2,(r + width)*out_by,0]){
       difference(){
          cylinder(r=r,h=z);
        }
      }
      translate([length/2 - subr,0,0]){
        cube([2 * subr,(r + width) * out_by,z]);
      }
    }
    union(){
      translate([length/2 - subr + width, 0,0]){
        cube([2 * (subr - width), (r + width) * out_by, z]);
      }
      translate([length/2,(r + width)*out_by,0]){
        cylinder(r=r-width,h=z);
      }
    }
  }
}

module puzzle(r=5,z=3,width=1,length=40,out_by=1.3,n=1){
  for(i=[1:2:n]){
    translate([(i-1) * length,0,0]){
      puzzle_cut(r,z,width,length,out_by);
    }
  }
  for(i=[2:2:n]){
    mirror([0,1,0]){
    translate([(i-1) * length,-width,0]){
      puzzle_cut(r,z,width,length,out_by);
    }
    }
  }
}
difference(){
  translate([0,-1,0]) cube([8,8,1]);
  puzzle(n=1,width=0.5,r=2,length=8);
}