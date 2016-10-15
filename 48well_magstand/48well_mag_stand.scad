//magnet holes
magx=4.4;
magy=50.2;
magz=3.2;
platex=1.2;
//true z = 3
//true y = 3.96
//true x = 10.05
//true spacing = 62.5/4
spacingx=99/5.5;
spacingy=spacingx;

module magnet_holes(){
	for (j = [1:4]){
		translate([j*spacingx,0,0])
//		for (i = [1:4]){
//		    translate([i*spacingx,0,0])
			union(){
		    cube([magx,magy,magz]);
			 translate([-platex/2,-magy*0.1,0])
			 cube([magx+platex,magy*1.2,1.5]);
			}
//		}
	}
}

//sight holes
module sight_holes(){
	for (j= [1:5]){
		translate([(j-0.5)*spacingx,-magy*0.1,0])
		cube([magx*0.8,magy*1.2,magz*2]);
	}
}

//tube holes
tuber=4/2;
tuber2=6.8/2;
tubeh=10.6;
tubeoff=8.5;

//true R1 = 6.12
//true R2 = 3
//true h = 10.6
//true offset = 7.9

module tube_holes(){
	for (j=[1:6]){
		translate([0,j*spacingy/2,0])
		for (i=[1:8]){ //8 for 48 well plate

			translate([i*spacingx/2,0,tubeh-tubeoff])
			union(){
				cylinder(h=tubeh,r1=tuber,r2=tuber2);
				translate([0,0,tubeoff-tubeh]) cylinder(h=tubeh,r=tuber);
				}
		}
	}

}

//the thing
totalh=9.5;
module thing(){
	difference(){
		translate([spacingx/4,spacingy/4,0]) 
		cube([spacingx*4,spacingy*3,totalh]); // 4, 3, for 48 well plate
		union(){
			translate([-spacingx/4-magx/2,spacingy*7/4-magy/2,totalh-magz+0.1]){
				magnet_holes();
				//sight_holes();
				}
			tube_holes();
		}
	}
}

//subpart
//intersection(){
//color("red") cube([spacingx*1.25,spacingy*1.25,totalh]);
thing();
//}
