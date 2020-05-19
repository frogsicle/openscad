// Generated by inkscape 0.91 r13725 + inkscape-paths2openscad 0.25
// Tue May 19 15:11:32 2020 from "filter_tri_stand.svg"

// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;
zsize = 6;
line_fn = 4;
min_line_width = 1.0;
line_width_scale = 1.0;
function min_line_mm(w) = max(min_line_width, w * line_width_scale) * 90/25.4;


path41383_0_center = [0.000000,66.264640];
path41383_0_points = [[25.758507,43.582490],[25.758507,78.126000],[25.847797,99.832490],[11.585281,99.888490],[11.585281,79.615220],[-1.501329,79.362680],[-1.501329,96.242130],[-4.970889,95.989590],[-4.970889,105.858880],[-11.789419,106.472420],[-25.847797,91.716780],[7.585274,26.056860],[25.758507,43.582490]];
module poly_path41383(h, w, s, res=line_fn)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    translate (path41383_0_center) linear_extrude(height=h, convexity=10, scale=0.01*s)
      translate (-path41383_0_center) polygon(path41383_0_points);
  }
}

path41386_0_center = [5.680330,-91.980675];
path41386_0_points = [[25.758507,-92.299190],[25.758507,-77.488930],[-14.219277,-78.125960],[-14.397847,-92.299190],[-14.397847,-105.346080],[0.118562,-105.345840],[0.066432,-92.299190],[10.299558,-92.120620],[10.299558,-106.293850],[25.758502,-106.472420],[25.758507,-92.299190]];
module poly_path41386(h, w, s, res=line_fn)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    translate (path41386_0_center) linear_extrude(height=h, convexity=10, scale=0.01*s)
      translate (-path41386_0_center) polygon(path41386_0_points);
  }
}

module filter_tri_stand_60(h)
{
  difference()
  {
    union()
    {
      translate ([0,0,0]) poly_path41383(h, min_line_mm(0.282222222222), 100.0);
      translate ([0,0,0]) poly_path41386(h, min_line_mm(0.282222222222), 100.0);
    }
    union()
    {
    }
  }
}

filter_tri_stand_60(zsize);
