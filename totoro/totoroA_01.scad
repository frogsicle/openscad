
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module poly_path29913(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    difference()
    {
       linear_extrude(height=h)
         polygon([[-49.999056,-131.906253],[-51.774909,-131.391395],[-53.149543,-129.822634],[-54.159870,-127.256620],[-54.842807,-123.750003],[-54.946396,-120.005649],[-54.369896,-115.950934],[-53.222035,-111.633646],[-51.611542,-107.101576],[-47.437569,-97.584245],[-42.717799,-87.781252],[-38.842808,-79.718752],[-43.510951,-76.876344],[-46.749052,-74.375006],[-52.892811,-68.701467],[-55.050012,-67.223102],[-57.083796,-66.264620],[-62.240223,-64.750152],[-71.280304,-61.843749],[-72.439532,-60.696888],[-73.192419,-59.407321],[-73.002999,-58.853549],[-72.215811,-58.437532],[-70.665460,-58.217080],[-68.186553,-58.250003],[-64.750162,-58.077925],[-62.183979,-57.304650],[-61.766225,-56.744946],[-62.212834,-56.097801],[-63.739410,-55.384168],[-66.561556,-54.624999],[-70.593471,-54.184675],[-73.452929,-53.444089],[-74.457573,-52.888220],[-74.936556,-52.187504],[-74.520848,-51.250331],[-73.204786,-50.606319],[-69.133071,-49.725111],[-67.008152,-49.251579],[-65.244348,-48.598538],[-64.157026,-47.647820],[-63.965599,-47.023904],[-64.061554,-46.281257],[-65.254829,-44.746080],[-66.592804,-41.750000],[-68.986024,-36.015961],[-72.217806,-30.093748],[-76.030301,-23.375002],[-77.780301,-20.187505],[-81.071557,-14.861511],[-84.433549,-8.233710],[-87.703294,-0.653116],[-90.717807,7.531253],[-93.935197,21.631936],[-96.047659,32.921730],[-97.012428,42.279417],[-97.051062,46.508342],[-96.786736,50.583785],[-96.214103,54.615594],[-95.327819,58.713617],[-92.592910,67.547698],[-88.539245,77.964814],[-83.124056,90.843749],[-87.965941,95.647985],[-92.297990,100.895330],[-95.645479,106.253802],[-96.801661,108.870967],[-97.533680,111.391421],[-97.782194,113.773667],[-97.487865,115.976206],[-96.591349,117.957542],[-95.033307,119.676176],[-92.754397,121.090611],[-89.695280,122.159349],[-85.796613,122.840893],[-80.999055,123.093746],[-76.105867,123.304905],[-72.979791,123.699883],[-70.863345,124.448043],[-68.999051,125.718751],[-67.121830,126.952460],[-64.780311,127.855581],[-61.477849,128.565288],[-56.717801,129.218751],[-42.686551,131.062497],[-34.717800,131.906253],[-30.313152,131.613469],[-24.158796,130.798947],[-18.432380,129.795889],[-15.311555,128.937496],[-9.427953,128.540787],[3.375947,128.437501],[36.600063,128.645688],[52.876381,128.535302],[56.744785,128.286224],[58.879043,127.868201],[60.113425,127.251464],[61.282196,126.406246],[63.114186,125.096774],[63.906841,124.277276],[63.777799,123.694139],[62.844696,123.093746],[61.891862,122.506315],[61.514903,121.959358],[61.685655,121.268659],[62.375950,120.250001],[63.782198,117.812496],[68.385360,114.728851],[73.179589,111.144559],[77.251684,107.777048],[79.688443,105.343746],[81.565152,102.361520],[83.405487,98.548958],[86.633631,89.817714],[88.686057,81.919799],[89.056746,79.148898],[88.875951,77.624998],[90.242381,74.287709],[91.196280,71.545717],[91.438449,69.000000],[92.859820,66.134221],[95.200927,59.387610],[97.246732,50.861257],[97.779196,46.587267],[97.782194,42.656251],[97.517025,36.887018],[96.461028,29.309835],[94.795823,20.577518],[92.703033,11.342884],[87.961182,-6.022071],[85.675364,-12.846760],[83.688447,-17.562500],[74.750946,-34.968757],[72.142277,-39.962537],[71.325168,-41.849707],[71.000948,-43.375006],[70.875945,-47.562501],[77.350954,-48.164484],[80.579870,-48.764624],[83.094698,-49.749999],[83.092997,-50.272106],[82.739481,-50.752853],[81.240140,-51.604442],[76.914153,-52.967224],[75.140042,-53.535117],[74.326875,-54.065145],[75.000920,-54.585657],[77.688445,-55.125003],[81.844836,-55.237649],[84.032199,-55.624998],[84.501305,-57.507642],[84.318182,-58.148758],[83.894714,-58.620929],[82.441071,-59.152017],[80.369023,-59.288064],[75.284294,-59.123667],[72.728906,-59.197539],[70.469695,-59.625003],[69.432665,-60.237561],[70.012837,-60.778528],[73.753511,-61.865178],[75.778371,-62.520604],[77.149152,-63.323928],[77.411820,-63.798199],[77.298035,-64.330021],[75.657199,-65.593756],[71.937155,-66.057487],[69.463031,-66.274447],[67.063450,-66.156248],[64.794851,-66.564297],[62.706252,-67.460065],[60.921251,-68.617988],[59.563445,-69.812500],[56.109730,-74.479006],[51.438451,-79.875004],[54.080916,-86.550913],[56.768394,-94.455100],[59.938445,-104.531253],[60.536603,-107.083574],[60.867469,-110.236148],[60.870998,-117.346029],[60.236377,-123.868834],[59.250950,-127.812503],[58.544183,-128.795074],[57.670998,-129.443566],[56.648967,-129.771695],[55.495664,-129.793177],[52.865536,-128.971061],[49.921198,-127.086945],[46.803235,-124.250556],[43.652232,-120.571618],[40.608776,-116.159858],[37.813450,-111.125003],[36.631701,-108.395738],[35.758125,-105.559905],[34.782196,-98.937503],[34.525031,-96.263093],[34.098220,-94.415815],[33.353234,-93.299986],[32.141544,-92.819926],[30.314624,-92.879954],[27.723946,-93.384389],[19.657201,-95.343752],[15.287935,-96.204971],[11.165650,-96.695420],[7.193380,-96.844530],[3.274159,-96.681729],[-4.792999,-95.538112],[-13.811552,-93.500003],[-18.655303,-92.281253],[-24.230993,-101.473389],[-28.655301,-108.562502],[-31.923435,-113.949003],[-36.613726,-120.249933],[-41.566992,-126.050898],[-45.624050,-129.937503],[-48.000885,-131.403993],[-49.999056,-131.906253]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-46.061557,-124.281253],[-45.655308,-124.281253],[-44.779134,-123.657029],[-43.315526,-121.961368],[-39.308241,-116.417809],[-34.997927,-109.774722],[-31.749052,-104.156252],[-30.065730,-100.805562],[-28.624052,-97.281253],[-26.960253,-94.245627],[-24.061556,-90.000003],[-24.374050,-88.406252],[-24.521796,-87.092665],[-25.054776,-86.150347],[-26.130206,-85.421919],[-27.905299,-84.750003],[-30.374052,-83.843752],[-35.830775,-90.960220],[-39.850465,-96.887652],[-44.405303,-104.781252],[-45.867129,-107.836062],[-46.803460,-110.685303],[-47.361026,-113.926268],[-47.686554,-118.156253],[-47.697605,-121.517940],[-47.356036,-123.352507],[-46.773477,-124.120197],[-46.061557,-124.281253]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[54.063447,-121.875003],[54.563382,-121.470100],[54.785454,-120.360390],[54.522357,-116.410423],[53.526844,-110.792858],[52.051607,-104.275450],[48.672715,-91.612129],[46.407199,-84.562502],[45.789545,-83.800130],[45.501460,-82.042531],[45.642801,-80.083980],[46.313426,-78.718753],[47.094676,-78.000000],[47.788199,-76.573169],[48.246433,-76.231807],[48.782179,-76.218751],[52.719677,-71.531252],[48.907182,-70.999999],[47.612710,-72.720714],[46.056440,-74.052222],[44.261477,-74.896684],[42.250924,-75.156256],[39.909940,-76.476087],[37.359700,-76.917880],[34.720620,-76.608780],[32.113116,-75.675934],[29.657605,-74.246488],[27.474501,-72.447586],[25.684220,-70.406375],[24.407179,-68.250000],[13.586882,-67.358218],[4.782176,-67.031253],[3.340493,-67.479292],[1.813428,-67.281250],[1.438427,-67.124998],[-13.249070,-68.000003],[-14.556711,-72.395439],[-15.282789,-76.886143],[-15.247766,-78.603481],[-14.851382,-79.668151],[-14.021646,-79.854656],[-12.686569,-78.937502],[-9.723258,-76.767980],[-8.538420,-76.422749],[-7.630973,-76.604976],[-7.060555,-77.340487],[-6.886799,-78.655110],[-7.169343,-80.574672],[-7.967820,-83.125002],[-8.536211,-84.802810],[-8.419098,-85.551509],[-5.999071,-87.406253],[-3.041544,-89.812388],[0.187037,-91.082654],[4.252252,-91.600656],[9.719682,-91.750003],[15.384309,-91.472788],[21.872031,-90.646443],[27.814828,-89.489066],[31.844678,-88.218753],[39.844677,-84.218753],[40.205732,-84.864989],[40.328108,-86.325582],[40.154081,-87.920261],[39.625928,-88.968752],[38.279309,-90.206999],[38.027766,-91.049889],[38.120340,-92.331473],[39.526666,-97.079275],[42.875932,-106.187503],[45.192130,-111.485165],[47.657177,-115.937503],[49.995778,-118.780054],[52.875929,-121.125003],[54.063428,-121.875003]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-41.030306,-67.312498],[-40.657004,-67.109047],[-40.382003,-66.485376],[-40.069958,-64.342554],[-39.999058,-59.031253],[-39.702118,-57.357703],[-38.478256,-55.471245],[-35.897606,-53.567916],[-31.530303,-51.843752],[-29.051728,-51.378751],[-26.474261,-51.358167],[-23.881674,-51.751778],[-21.357743,-52.529362],[-18.986241,-53.660699],[-16.850943,-55.115565],[-15.035622,-56.863740],[-13.624052,-58.875001],[-8.467097,-56.420013],[-4.680850,-53.792956],[-3.340595,-52.415576],[-2.389641,-50.995986],[-1.843530,-49.534457],[-1.717802,-48.031257],[-2.615003,-43.850372],[-4.620809,-38.842152],[-7.315736,-33.951921],[-10.280303,-30.125005],[-16.312362,-30.564773],[-21.571719,-30.391730],[-26.583806,-29.538448],[-31.874055,-27.937498],[-37.062833,-27.267200],[-39.793939,-26.593253],[-42.092801,-25.625006],[-47.080561,-22.313376],[-51.681005,-18.547604],[-55.817218,-14.607093],[-59.412285,-10.771243],[-64.671323,-4.531138],[-66.842802,-2.062505],[-68.765611,-2.273001],[-71.613204,-2.368370],[-73.958409,-2.677992],[-74.496625,-3.016080],[-74.374055,-3.531250],[-72.078820,-7.136842],[-67.996245,-14.326808],[-66.034117,-18.246119],[-64.524450,-21.837747],[-63.767007,-24.693768],[-63.764047,-25.718449],[-64.061554,-26.406256],[-64.459355,-27.711793],[-63.960462,-29.536189],[-61.253844,-34.163177],[-57.904207,-39.130453],[-56.601538,-41.380210],[-55.874054,-43.281251],[-54.907926,-45.637787],[-53.153533,-47.463655],[-50.728150,-49.448322],[-47.749051,-52.281249],[-46.869875,-54.463899],[-46.465232,-56.236733],[-46.193131,-59.170001],[-45.882469,-60.638957],[-45.159930,-62.315143],[-43.803910,-64.352820],[-41.592807,-66.906249],[-41.030306,-67.312498]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-36.342806,-63.562501],[-32.904063,-63.385089],[-27.374056,-62.750002],[-26.686552,-61.875007],[-25.343376,-60.845032],[-24.073064,-60.479541],[-22.921996,-60.772719],[-21.936555,-61.718755],[-17.624056,-60.406252],[-18.697622,-58.813274],[-20.217803,-57.468753],[-23.046467,-56.039026],[-25.885313,-55.426977],[-28.613101,-55.536831],[-31.108594,-56.272813],[-33.250550,-57.539146],[-34.917730,-59.240056],[-35.988896,-61.279766],[-36.342806,-63.562501]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[55.563450,-63.562501],[57.247774,-63.201682],[57.365872,-62.706704],[56.782197,-61.937504],[55.656379,-61.085269],[55.472661,-59.971319],[56.162460,-58.895147],[57.657193,-58.156248],[58.692979,-57.794580],[59.310303,-57.306870],[59.546386,-56.642288],[59.438451,-55.750001],[59.329053,-54.856352],[59.566596,-54.194428],[60.193191,-53.708728],[61.250948,-53.343755],[62.276548,-52.917218],[63.234766,-52.166085],[64.959815,-49.667781],[66.447618,-45.804338],[67.719696,-40.531252],[69.120809,-35.639912],[70.875945,-32.250006],[72.948530,-29.093271],[75.244838,-24.389009],[80.063443,-12.000005],[61.657197,-12.531248],[59.923836,-14.400713],[58.032193,-16.687505],[54.940614,-18.758345],[49.870837,-21.066072],[37.969692,-25.718752],[34.230176,-26.685105],[27.553615,-27.919282],[19.342905,-29.061007],[11.000946,-29.750005],[13.125947,-43.187505],[13.344695,-43.250021],[13.870101,-43.685973],[14.071086,-44.403082],[13.688448,-46.375021],[14.557070,-50.577144],[15.431810,-53.654413],[16.216119,-55.654487],[16.813447,-56.625025],[19.190321,-58.566470],[21.578363,-59.827817],[24.625947,-60.625020],[25.902961,-58.592873],[27.546576,-56.705812],[29.472064,-55.114292],[31.594699,-53.968771],[34.566421,-53.376648],[38.800837,-53.049923],[42.955621,-53.096684],[45.688446,-53.625019],[48.048225,-55.354936],[49.690185,-57.634366],[50.659400,-60.291935],[51.000944,-63.156270],[55.563450,-63.562519]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[46.532193,-62.750002],[45.986144,-61.109249],[44.782193,-59.499999],[43.448053,-58.129532],[42.261963,-57.229251],[40.632862,-56.800283],[37.969692,-56.843755],[34.952806,-57.343895],[32.443990,-58.260944],[30.463652,-59.531900],[29.032200,-61.093757],[46.532193,-62.750002]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-7.624049,-25.562500],[0.425776,-25.032024],[7.532854,-24.027757],[13.600542,-23.056486],[18.532199,-22.625000],[25.571817,-22.096758],[31.338487,-21.520962],[35.907198,-20.812503],[40.726952,-19.543873],[42.250943,-19.031255],[49.287324,-15.362029],[53.750943,-12.687500],[25.104619,-12.945040],[10.514636,-12.797629],[-3.092802,-12.375006],[-12.080527,-11.726590],[-20.461307,-10.687916],[-28.183224,-9.354222],[-35.194363,-7.820744],[-46.876639,-4.535389],[-55.092804,-1.593749],[-51.530307,-7.000002],[-48.383372,-10.761967],[-45.260389,-13.932552],[-42.029748,-16.585313],[-38.559839,-18.793808],[-34.719051,-20.631594],[-30.375772,-22.172225],[-25.398393,-23.489261],[-19.655302,-24.656256],[-13.465723,-25.402248],[-7.624049,-25.562500]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[4.125948,28.687498],[74.844701,28.687498],[76.674592,36.023955],[78.018933,44.054439],[78.713657,51.823327],[78.594698,58.374995],[77.621474,63.232704],[76.000951,68.062498],[74.599266,72.143538],[74.602899,73.327241],[75.032201,74.187494],[75.346692,75.054884],[75.323288,76.390023],[74.412891,80.032400],[72.601212,84.252325],[70.188449,88.187496],[65.500950,95.406246],[61.975360,100.442888],[59.872718,102.670918],[57.445882,104.782440],[51.326748,108.887022],[43.032193,113.218752],[34.621925,116.844339],[26.120764,119.670857],[17.466471,121.703782],[8.596808,122.948593],[-0.550462,123.410768],[-10.037579,123.095783],[-19.926782,122.009117],[-30.280307,120.156246],[-34.356788,119.343363],[-36.760366,119.080824],[-38.197350,119.379439],[-39.374051,120.250020],[-40.473513,121.033968],[-41.753811,121.436359],[-45.842799,121.250019],[-54.331330,120.566257],[-58.034754,119.697281],[-59.216884,118.923268],[-59.749055,117.843764],[-59.782855,116.309320],[-59.523764,114.920534],[-58.347398,112.774823],[-57.540363,112.115338],[-56.660922,111.796394],[-55.764195,111.866713],[-54.905304,112.375014],[-52.194614,114.388923],[-49.907361,115.375137],[-47.030308,115.843766],[-45.433300,115.448129],[-45.053163,114.951833],[-44.977159,114.292451],[-45.813216,112.592117],[-48.092803,110.562517],[-51.579555,107.859097],[-55.182245,104.465830],[-59.130839,100.144343],[-63.655305,94.656263],[-65.697057,91.833328],[-67.564598,88.709740],[-70.820361,81.437961],[-73.509222,72.595647],[-75.717806,61.937521],[-75.541266,58.132486],[-74.249052,53.000019],[-70.842806,40.500020],[-69.592801,35.406272],[-57.003540,33.711982],[-37.956400,31.474019],[-16.297774,29.522494],[-5.691150,28.913555],[4.125948,28.687516]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[80.250944,28.687498],[90.282199,28.687498],[91.461536,33.908280],[92.844697,38.687495],[89.180385,55.106438],[87.444411,62.716217],[86.500943,65.906249],[85.392892,64.100046],[84.627935,61.502489],[84.151046,57.911499],[83.907196,53.124994],[83.155345,43.960469],[81.688450,34.499999],[80.250944,28.687498]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[82.563445,70.656245],[84.365407,76.019055],[85.219699,79.406246],[83.486365,85.398132],[80.674690,92.131385],[77.151144,98.822382],[73.282201,104.687499],[70.449752,107.475622],[66.486816,110.647259],[62.499695,113.956205],[59.594693,117.156250],[56.813446,117.624996],[55.766269,117.408651],[55.464422,116.731219],[55.783610,115.697898],[56.599536,114.413890],[59.224418,111.514615],[62.344702,108.874995],[64.195012,106.969078],[66.225768,104.166273],[70.479599,96.940371],[77.313444,83.499996],[78.394680,80.572121],[78.844696,77.750001],[79.156401,75.932985],[79.959475,74.013302],[81.134846,72.188529],[82.563445,70.656245]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-82.717807,97.531247],[-81.771416,97.729637],[-80.696349,98.524941],[-78.328872,101.438382],[-75.952736,105.335755],[-73.905300,109.281244],[-73.264406,111.398644],[-73.323481,113.144329],[-73.954716,114.013159],[-74.444953,113.960899],[-75.030302,113.499997],[-76.310298,112.764037],[-78.380751,112.258549],[-83.765955,111.775827],[-91.624051,111.781246],[-92.049187,111.656877],[-92.262523,111.302287],[-92.126256,110.013544],[-90.109233,105.895499],[-86.732432,101.204703],[-84.896444,99.200021],[-83.155305,97.718747],[-82.717807,97.531247]]);
    }
  }
}

poly_path29913(1.2000000476837158);