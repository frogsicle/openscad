
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module poly_path4146(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    difference()
    {
       linear_extrude(height=h)
         polygon([[-0.000000,-91.771486],[-10.735807,-91.299024],[-21.166984,-89.912034],[-31.239993,-87.656106],[-40.901297,-84.576833],[-50.097359,-80.719807],[-58.774641,-76.130619],[-66.879606,-70.854860],[-74.358716,-64.938123],[-81.158434,-58.425999],[-87.225223,-51.364080],[-92.505544,-43.797957],[-96.945860,-35.773223],[-100.492634,-27.335468],[-103.092329,-18.530285],[-104.691407,-9.403266],[-105.236330,-0.000001],[-104.691407,9.403263],[-103.092329,18.530283],[-100.492634,27.335466],[-96.945860,35.773221],[-92.505544,43.797956],[-87.225223,51.364079],[-81.158434,58.425998],[-74.358716,64.938122],[-66.879606,70.854860],[-58.774641,76.130618],[-50.097359,80.719807],[-40.901297,84.576833],[-31.239993,87.656106],[-21.166984,89.912034],[-10.735807,91.299024],[-0.000000,91.771486],[10.735806,91.299024],[21.166982,89.912034],[31.239991,87.656106],[40.901295,84.576833],[50.097357,80.719807],[58.774639,76.130618],[66.879604,70.854860],[74.358715,64.938122],[81.158433,58.425998],[87.225221,51.364079],[92.505543,43.797956],[96.945859,35.773221],[100.492634,27.335466],[103.092329,18.530283],[104.691407,9.403263],[105.236330,-0.000001],[104.691407,-9.403266],[103.092329,-18.530285],[100.492634,-27.335468],[96.945859,-35.773223],[92.505543,-43.797957],[87.225221,-51.364080],[81.158433,-58.425999],[74.358715,-64.938123],[66.879604,-70.854860],[58.774639,-76.130619],[50.097357,-80.719807],[40.901295,-84.576834],[31.239991,-87.656106],[21.166982,-89.912034],[10.735806,-91.299024],[-0.000000,-91.771486]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-0.000000,-88.228517],[10.421511,-87.771659],[20.536495,-86.431009],[30.294475,-84.251453],[39.644972,-81.277877],[48.537508,-77.555168],[56.921607,-73.128211],[64.746789,-68.041893],[71.962577,-62.341100],[78.518494,-56.070719],[84.364060,-49.275635],[89.448800,-42.000734],[93.722234,-34.290903],[97.133885,-26.191028],[99.633274,-17.745996],[101.169925,-9.000691],[101.693360,-0.000001],[101.169925,9.000688],[99.633274,17.745992],[97.133885,26.191025],[93.722234,34.290900],[89.448800,42.000730],[84.364060,49.275631],[78.518494,56.070715],[71.962577,62.341097],[64.746789,68.041890],[56.921607,73.128208],[48.537508,77.555165],[39.644972,81.277875],[30.294475,84.251451],[20.536495,86.431007],[10.421511,87.771657],[-0.000000,88.228516],[-10.421512,87.771657],[-20.536497,86.431007],[-30.294477,84.251451],[-39.644975,81.277875],[-48.537511,77.555165],[-56.921610,73.128208],[-64.746792,68.041890],[-71.962580,62.341097],[-78.518496,56.070715],[-84.364063,49.275631],[-89.448802,42.000730],[-93.722236,34.290900],[-97.133886,26.191025],[-99.633276,17.745992],[-101.169927,9.000688],[-101.693361,-0.000001],[-101.169927,-9.000691],[-99.633276,-17.745996],[-97.133886,-26.191028],[-93.722236,-34.290903],[-89.448802,-42.000734],[-84.364063,-49.275635],[-78.518496,-56.070719],[-71.962580,-62.341100],[-64.746792,-68.041893],[-56.921610,-73.128211],[-48.537511,-77.555168],[-39.644975,-81.277877],[-30.294477,-84.251453],[-20.536497,-86.431009],[-10.421512,-87.771659],[-0.000000,-88.228517]]);
    }
  }
}

poly_path4146(12);
