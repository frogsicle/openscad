
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module poly_path41505(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[8.077628,-21.114641],[6.143303,-20.400503],[5.417864,-18.609448],[5.916279,-16.236432],[9.644076,-10.756421],[15.445503,-5.984284],[18.535957,-4.496110],[21.439372,-3.943836],[23.886177,-4.290913],[25.892521,-5.236402],[27.249514,-6.636684],[27.748265,-8.348144],[27.141367,-10.279882],[25.491841,-12.402075],[20.091915,-16.644962],[13.602505,-19.931083],[8.077628,-21.114717]]);
    linear_extrude(height=h)
      polygon([[-18.437542,-17.216230],[-21.383785,-15.997024],[-24.183592,-13.718734],[-26.275336,-10.801038],[-27.097390,-7.663612],[-26.620230,-6.022064],[-25.244665,-5.636264],[-23.054568,-6.494782],[-20.133812,-8.586185],[-15.825208,-13.290351],[-14.991698,-15.201932],[-15.253346,-16.472306],[-16.670576,-17.233124],[-18.437542,-17.216307]]);
    linear_extrude(height=h)
      polygon([[-4.361586,-8.169526],[-9.718830,-7.582711],[-12.224646,-6.430887],[-14.479618,-4.657973],[-16.668301,-1.604160],[-17.560941,1.653078],[-17.290422,4.900461],[-15.989631,7.924708],[-13.791455,10.512539],[-10.828780,12.450672],[-7.234491,13.525827],[-3.141474,13.524723],[1.316706,12.310193],[4.550306,10.126187],[6.519599,7.007783],[7.184858,2.990062],[6.222002,-1.336842],[3.655038,-4.751319],[-0.033627,-7.085002],[-4.361586,-8.169526]]);
    linear_extrude(height=h)
      polygon([[23.314184,1.740191],[20.609181,2.215836],[18.076619,3.912589],[16.491320,6.071431],[15.653685,8.481308],[15.507224,10.976125],[15.995447,13.389791],[17.061866,15.556213],[18.649990,17.309295],[20.703331,18.482947],[23.165398,18.911073],[24.974589,18.518892],[26.919640,17.451113],[30.277763,13.941336],[31.215131,11.782236],[31.442186,9.645178],[30.152942,5.755363],[27.185214,2.908249],[23.314184,1.740191]]);
    linear_extrude(height=h)
      polygon([[-28.615089,5.846916],[-29.960749,5.696102],[-30.832127,6.874800],[-31.442186,13.494950],[-31.181903,18.550094],[-30.289316,21.032284],[-28.596815,21.114717],[-25.936792,18.970587],[-23.537035,16.054923],[-22.737116,13.480072],[-23.537035,10.905222],[-25.936792,7.989557],[-28.615089,5.846916]]);
  }
}

poly_path41505(7);