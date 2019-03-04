
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module poly_rect41706(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[4.215628,-7.393497],[9.096489,-7.393497],[9.096489,6.900456],[4.215628,6.900456]]);
  }
}

module poly_rect41703(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[-9.096489,-6.900456],[-4.215628,-6.900456],[-4.215628,7.393497],[-9.096489,7.393497]]);
  }
}

height = 5.5;
poly_rect41706(height);
poly_rect41703(height);
