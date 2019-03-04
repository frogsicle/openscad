
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module poly_path4166(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[-17.083011,22.138203],[-0.024245,21.698572],[11.155627,21.922933],[16.908705,22.486815],[19.333997,24.682706],[22.186537,26.231884],[25.973161,27.019050],[29.598404,26.095714],[31.148527,24.760762],[32.488243,22.770083],[34.430236,16.600916],[35.211937,7.146972],[34.759421,-1.573925],[33.221483,-8.236127],[30.674133,-13.395019],[27.193380,-17.605984],[22.503179,-21.282969],[16.342179,-24.273584],[8.808435,-26.283669],[0.000001,-27.019067],[-8.704932,-26.076669],[-16.037121,-23.663478],[-22.061934,-20.400493],[-26.844737,-16.908714],[-30.505387,-13.122766],[-33.120137,-8.323610],[-34.688987,-2.151716],[-35.211937,5.752448],[-34.787041,14.027035],[-33.381613,20.700092],[-30.799548,25.215981],[-29.005993,26.491352],[-26.844737,27.019067],[-22.928360,26.494132],[-20.294129,24.951043],[-17.083011,22.138203]]);
  }
}

poly_path4166(6);
