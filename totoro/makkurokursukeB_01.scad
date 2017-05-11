
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module poly_rect414436(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[17.064450,-70.249999],[17.064450,12.900388],[-10.000000,12.900388],[-10.000000,-65.749999],[-24.369141,-65.749999],[-24.369141,12.900388],[-77.500000,12.900388],[-77.500000,27.269528],[-24.369141,27.269528],[-24.369141,70.249998],[-10.000000,70.249998],[-10.000000,27.269528],[17.064450,27.269528],[17.064450,68.749998],[31.433590,68.749998],[31.433590,27.269528],[77.500000,27.269528],[77.500000,12.900388],[31.433590,12.900388],[31.433590,-70.249999],[17.064450,-70.249999]]);
  }
}

poly_rect414436(1.2000000476837158);
