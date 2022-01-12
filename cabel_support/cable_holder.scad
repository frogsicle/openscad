// cable_holder.scad
// library for parametric Cable Holder, Clip, Hook, Hanger, Loop
// Author: Tony Z. Tonchev, Michigan (USA) 
// last update: November 2018
// https://www.thingiverse.com/thing:3242595/files

// (in mm)
Clip_Diameter = 17;

// (in mm)
Clip_Thickness = 25;

// #4-3mm, #6-3.5mm, #8-4mm, #9-4.5mm, #10-5mm (in mm)
Screw_Gauge = 4.5;

// (Front or Side)
Clip_Split = 1; // [0:Front,1:Side]


/* [Hidden] */

$fn=100;
TZT_Rad=Clip_Diameter/2;
TZT_Thk=Clip_Thickness;
TZT_Scr=Screw_Gauge;
TZT_Slt=Clip_Split;

difference () {
    TZT_CLIP();
    if ((TZT_Thk/8)<TZT_Scr) {
        TZT_SCREW();
    } else {
        translate ([0,0,TZT_Thk/4]) {
            TZT_SCREW();
        }
        translate ([0,0,-TZT_Thk/4]) {
            TZT_SCREW();
        }
       
    }
}

module TZT_SCREW () {
    translate ([-TZT_Rad*.98,0,0]) {
        rotate ([0,-90,0]) {
            cylinder (TZT_Scr*1.1,TZT_Scr,0);
            cylinder (TZT_Rad*.6,TZT_Scr/2,TZT_Scr/2);
            translate ([0,0,-TZT_Scr]) {
                cylinder (TZT_Scr*1.1,TZT_Scr,TZT_Scr);
            }
            echo(TZT_Scr*1.2);
            if ((TZT_Slt==1)&&((TZT_Thk/3)>TZT_Scr)) {
                translate ([0,0,-TZT_Rad*3]) {
                    // hole for screw driver
                    cylinder (TZT_Rad*3,TZT_Scr*1.2,TZT_Scr*1.2);
                }
            }
        }
    }
}

module TZT_CLIP () {
    difference () {
        union () {
            translate ([-TZT_Rad*1.1,0,0]) {
                difference () {
                    cube ([TZT_Rad*.6,TZT_Rad*2.2,TZT_Thk],true) ;
                    translate ([TZT_Rad*.2,TZT_Rad*1.07,0]) {
                        cylinder (TZT_Thk*1.1,TZT_Rad*.2,TZT_Rad*.2,true);
                    }
                    translate ([TZT_Rad*.2,-TZT_Rad*1.07,0]) {
                        cylinder (TZT_Thk*1.1,TZT_Rad*.2,TZT_Rad*.2,true);
                    }

                }
            }
            cylinder (TZT_Thk,TZT_Rad*1.3,TZT_Rad*1.3,true);
        }
        // middle cut out 
        cylinder (TZT_Thk*4,TZT_Rad,TZT_Rad,true);
        
        if (TZT_Slt==1) {
            rotate ([0,0,90]) TZT_SPLIT();
        } else {
            TZT_SPLIT();
        }       
    }
    
    // the cut out bit, where the cord is put into the holder
    
    module TZT_SPLIT () {
        translate ([TZT_Rad*1,0.5,0]) {
            rotate ([-TZT_Rad*10/TZT_Thk,0, 0]) {
                color("red") cube ([TZT_Rad,TZT_Rad*1.5,TZT_Thk*2],true);
            }
        }
    }
        
   
}