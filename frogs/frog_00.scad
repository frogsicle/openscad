// Generated by inkscape 0.92.5 (2060ec1f9f, 2020-04-08) + inkscape-paths2openscad 0.25
// Thu Dec 17 22:27:45 2020 from "fromabove.svg"

// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;
zsize = 3.5;
line_fn = 4;
min_line_width = 1.0;
line_width_scale = 1.0;
function min_line_mm(w) = max(min_line_width, w * line_width_scale) * 96/25.4;


rect4604_0_center = [-70.985916,60.915815];
rect4604_0_points = [[-74.617754,55.798226],[-67.354079,55.798226],[-67.354079,66.033405],[-74.617754,66.033405],[-74.617754,55.798226]];
module poly_rect4604(h, w, s, res=line_fn)
{
  scale([25.4/96, -25.4/96, 1]) union()
  {
    translate (rect4604_0_center) linear_extrude(height=h, convexity=10, scale=0.01*s)
      translate (-rect4604_0_center) polygon(rect4604_0_points);
  }
}

path45203_0_center = [-1.548775,1.216997];
path45203_0_points = [[-40.957084,-40.173505],[-45.830631,-33.811629],[-49.328934,-28.354424],[-51.229472,-23.597611],[-51.579667,-13.471133],[-51.820426,-8.002981],[-52.630252,-3.519754],[-54.906520,2.754571],[-57.532984,7.453021],[-62.348165,11.918008],[-65.937664,15.157313],[-66.054396,17.433580],[-65.609356,18.374731],[-64.770347,18.659266],[-61.557631,17.252680],[-58.658823,17.489338],[-56.132049,19.015345],[-54.035436,21.476811],[-52.427110,24.519842],[-51.365198,27.790548],[-50.907825,30.935036],[-51.113119,33.599415],[-51.317399,36.109140],[-50.883303,37.210798],[-49.945802,37.568296],[-46.531400,35.437935],[-45.185338,33.595761],[-45.043071,31.731701],[-44.261361,27.873720],[-43.182947,25.334012],[-41.911509,23.829509],[-40.550730,23.077145],[-37.975870,22.696569],[-36.287816,21.927752],[-35.645792,19.965200],[-35.879256,18.484167],[-37.221670,16.091166],[-37.156008,14.978568],[-36.171084,14.019179],[-33.019328,12.122289],[-31.042185,9.856965],[-28.583524,6.256521],[-26.124863,2.962499],[-24.147720,1.616439],[-22.549956,3.086527],[-20.995966,6.198156],[-18.544600,11.655364],[-16.005687,14.398559],[-14.342262,16.791556],[-15.316242,17.254836],[-17.581566,17.521130],[-20.153311,18.006296],[-22.046553,19.126188],[-24.206089,24.904408],[-24.738677,28.384471],[-24.614648,31.032822],[-23.348840,32.896884],[-21.141882,34.563960],[-17.143822,36.869415],[-15.276114,40.167078],[-12.007625,46.441415],[-10.300426,50.074684],[-9.556262,53.270212],[-8.987195,55.502704],[-7.805287,56.246865],[-6.207522,55.758054],[-5.003727,54.787723],[-4.325224,53.554746],[-4.303337,52.277996],[-5.237189,50.001723],[-5.470654,48.075655],[-4.598814,47.557658],[-3.048470,47.608728],[-0.100996,48.542575],[0.978772,50.030902],[1.442050,50.019958],[2.233638,48.542575],[3.072648,46.791605],[3.167493,45.916119],[-0.801385,43.639845],[-5.762482,40.167084],[-6.645265,38.813726],[-6.871432,37.569805],[-5.587383,35.235168],[-2.902556,33.600924],[-1.111455,34.232005],[1.095504,36.373300],[4.568270,40.371355],[19.509926,49.943355],[22.340672,51.665147],[25.346512,52.511455],[30.862084,52.336357],[34.046671,51.920497],[36.552756,51.110665],[38.475181,49.188247],[40.200619,46.237127],[41.922406,41.538675],[40.054706,22.394675],[36.990496,13.085325],[34.451586,6.752631],[37.953536,1.849900],[40.755096,0.449122],[42.651985,1.032779],[44.723976,2.316827],[44.169501,3.717607],[42.389346,5.118387],[39.704512,6.431620],[38.843618,7.318051],[39.120856,8.620337],[40.550819,9.185757],[42.506072,8.416059],[44.636423,7.339939],[46.591676,6.986097],[48.258754,8.018441],[49.597522,9.991936],[50.367223,12.271852],[50.327096,14.223461],[48.488570,17.608678],[48.061770,19.148078],[48.926316,20.293509],[50.644458,20.508733],[52.165616,19.563935],[53.292807,17.699875],[53.829046,15.157312],[54.704532,10.167034],[55.536244,8.820972],[56.630596,8.853802],[58.585861,11.071704],[60.366016,13.289606],[61.124772,13.625210],[61.533332,12.997776],[62.700656,9.554191],[62.956846,9.211245],[62.192300,8.287018],[58.595575,5.186106],[53.899634,1.234213],[50.093626,-2.585905],[48.353598,-5.653758],[48.080007,-7.517817],[47.762642,-8.725260],[45.891286,-9.823268],[41.834861,-11.165682],[38.653926,-10.056731],[33.313454,-6.058670],[30.249246,-3.286294],[29.782319,-2.089793],[29.264320,-1.414938],[28.614996,-1.418588],[27.943793,-2.790183],[26.747296,-6.087854],[21.144170,-15.426393],[18.138332,-19.453636],[17.434294,-20.351010],[17.408760,-21.029513],[18.583371,-21.518327],[20.852343,-21.788269],[23.383961,-22.145760],[25.346512,-22.897219],[26.765530,-23.097852],[28.118887,-22.050915],[30.015776,-18.928342],[30.074141,-16.535342],[30.409746,-15.842247],[31.883486,-15.893316],[33.804537,-15.222196],[35.432497,-14.233494],[37.270393,-13.666143],[39.821246,-14.259076],[41.285224,-15.085636],[41.685155,-15.998672],[40.554816,-21.291302],[40.403506,-23.398894],[40.770685,-24.511762],[41.232085,-25.351040],[41.363436,-26.637862],[41.026770,-27.291061],[40.272513,-27.574546],[37.995058,-27.481551],[35.498731,-27.257233],[33.751196,-27.799947],[32.554695,-30.689054],[31.883486,-33.403068],[29.111108,-35.679335],[25.813436,-37.605406],[23.770635,-39.298016],[20.677246,-41.340822],[16.358173,-43.850553],[12.739489,-46.710480],[9.646101,-49.774685],[7.749211,-51.011312],[5.502126,-51.613211],[-1.472592,-53.101539],[-5.299203,-53.812872],[-8.272214,-53.714379],[-10.822070,-53.400663],[-13.612687,-53.480917],[-16.184431,-53.386072],[-18.077673,-52.547062],[-19.004232,-50.825270],[-19.186625,-48.753284],[-18.544600,-45.309699],[-18.486235,-43.617089],[-18.778065,-42.975065],[-20.762503,-43.120979],[-22.520774,-42.876571],[-24.147720,-42.041211],[-26.365624,-39.998406],[-28.583525,-36.905017],[-29.842039,-35.299956],[-30.772245,-34.920578],[-31.308481,-35.591785],[-31.385085,-37.138480],[-31.822830,-40.290236],[-32.928133,-41.340821],[-34.887036,-42.041211],[-37.214374,-42.044860],[-39.147743,-41.370005],[-40.957084,-40.173505],[-40.957084,-40.173505]];
module poly_path45203(h, w, s, res=line_fn)
{
  scale([25.4/96, -25.4/96, 1]) union()
  {
    translate (path45203_0_center) linear_extrude(height=h, convexity=10, scale=0.01*s)
      translate (-path45203_0_center) polygon(path45203_0_points);
  }
}

rect4606_0_center = [69.995415,-62.896817];
rect4606_0_points = [[65.373076,-66.033405],[74.617754,-66.033405],[74.617754,-59.760230],[65.373076,-59.760230],[65.373076,-66.033405]];
module poly_rect4606(h, w, s, res=line_fn)
{
  scale([25.4/96, -25.4/96, 1]) union()
  {
    translate (rect4606_0_center) linear_extrude(height=h, convexity=10, scale=0.01*s)
      translate (-rect4606_0_center) polygon(rect4606_0_points);
  }
}

module frog_00(h)
{
  difference()
  {
    union()
    {
      translate ([0,0,0]) poly_rect4604(h, min_line_mm(1.54488194), 100.0);
      translate ([0,0,0]) poly_path45203(h, min_line_mm(0.1081484375), 100.0);
      translate ([0,0,0]) poly_rect4606(h, min_line_mm(1.54488194), 100.0);
    }
    union()
    {
    }
  }
}

//frog_00(zsize);
