
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module poly_path4168(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[-24.578670,-11.853522],[-25.275895,-0.697255],[-24.099263,2.571179],[-22.775549,5.333003],[-21.092304,7.669930],[-19.392711,9.565625],[-16.647223,11.330580],[-10.894776,12.572582],[-0.174310,12.899420],[10.573386,12.305658],[16.516487,11.025523],[19.779476,9.026333],[22.486835,6.275403],[23.792846,4.250332],[24.633105,1.514378],[25.275894,-4.880861],[24.927259,-12.899420]]);
  }
}

poly_path4168(4.5);
