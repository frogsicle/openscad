
// Module names are of the form poly_<inkscape-path-id>().  As a result,
// you can associate a polygon in this OpenSCAD program with the corresponding
// SVG element in the Inkscape document by looking for the XML element with
// the attribute id="inkscape-path-id".

// fudge value is used to ensure that subtracted solids are a tad taller
// in the z dimension than the polygon being subtracted from.  This helps
// keep the resulting .stl file manifold.
fudge = 0.1;

module poly_path2991(h)
{
  scale([25.4/90, -25.4/90, 1]) union()
  {
    linear_extrude(height=h)
      polygon([[-50.113301,-131.903321],[-51.893120,-131.387258],[-53.276482,-129.815808],[-54.982441,-123.739259],[-54.818445,-115.758523],[-52.574788,-106.607205],[-48.503220,-97.032168],[-42.855488,-87.780274],[-39.263691,-82.782228],[-37.349629,-84.698243],[-36.177287,-86.259499],[-36.521097,-88.834711],[-44.525410,-104.772462],[-46.923563,-110.676512],[-47.806660,-118.147462],[-47.789886,-121.856284],[-47.335519,-123.658819],[-46.607445,-124.238879],[-45.769551,-124.280274],[-43.430377,-121.959168],[-39.424436,-116.412924],[-31.867207,-104.147462],[-28.746113,-97.272462],[-27.194904,-94.679894],[-25.683613,-93.477540],[-25.171662,-94.756950],[-25.570328,-98.478700],[-26.797120,-103.473307],[-28.769551,-108.571290],[-32.040729,-113.958097],[-36.737735,-120.259696],[-41.697719,-126.061331],[-45.757832,-129.948243],[-48.124897,-131.407897],[-50.113301,-131.903321]]);
    difference()
    {
       linear_extrude(height=h)
         polygon([[55.951158,-129.811524],[51.836852,-128.487694],[47.062834,-124.655585],[42.165106,-118.732012],[37.679668,-111.133790],[35.624350,-105.561857],[34.648418,-98.932618],[33.967796,-94.409101],[33.226251,-93.291396],[32.018508,-92.809185],[27.608297,-93.369619],[19.544908,-95.327149],[11.049082,-96.682172],[3.148192,-96.675866],[-4.928366,-95.539636],[-13.951191,-93.504884],[-23.033591,-90.915071],[-24.284255,-89.858311],[-24.511738,-88.393556],[-25.192335,-86.148394],[-28.042988,-84.758790],[-38.430182,-80.019099],[-46.873066,-74.362306],[-53.016519,-68.689993],[-57.206833,-66.255833],[-62.362587,-64.744051],[-71.402363,-61.838868],[-72.560981,-60.693223],[-73.312526,-59.406341],[-72.334575,-58.439239],[-68.304707,-58.252931],[-64.869536,-58.078106],[-62.306037,-57.298791],[-61.889717,-56.735861],[-62.337576,-56.085901],[-66.687519,-54.610352],[-70.712601,-54.182724],[-73.567360,-53.450865],[-75.048847,-52.198243],[-74.633390,-51.260566],[-73.317992,-50.615227],[-69.248292,-49.729990],[-65.361584,-48.599387],[-64.274927,-47.647341],[-64.179707,-46.280274],[-65.380797,-44.739236],[-66.726582,-41.737310],[-69.109058,-36.012054],[-72.330097,-30.098630],[-76.150410,-23.360350],[-77.900410,-20.176760],[-84.549746,-8.229801],[-90.830097,7.528321],[-96.163917,32.919718],[-97.132752,42.278344],[-96.911722,50.583787],[-95.457467,58.714694],[-92.726625,67.549713],[-83.261738,90.846681],[-88.103538,95.650411],[-92.435367,100.896426],[-95.782543,106.253021],[-97.670385,111.388489],[-97.624212,115.971123],[-96.727531,117.951470],[-95.169342,119.669218],[-92.890307,121.082904],[-89.831093,122.151066],[-81.134785,123.084961],[-73.109663,123.699886],[-70.989190,124.454089],[-69.123066,125.727541],[-64.898462,127.856561],[-56.830097,129.211911],[-42.826191,131.063481],[-34.847675,131.903321],[-24.286719,130.796013],[-15.437519,128.934571],[3.263658,128.456051],[52.759202,128.548009],[58.758506,127.876876],[61.160138,126.413081],[63.783789,124.277279],[63.654082,123.689440],[62.720688,123.086911],[61.396753,121.961316],[62.263658,120.260741],[63.683578,117.731441],[63.092254,116.707289],[61.593954,116.703974],[56.671858,117.633841],[55.625518,117.417157],[55.325883,116.738838],[56.467712,114.418828],[62.222638,108.876031],[66.105225,104.167913],[70.362414,96.943354],[77.201158,83.504931],[78.732408,77.752981],[79.213213,75.416360],[80.430812,72.997916],[82.148329,70.906712],[84.128888,69.551811],[88.621383,68.309748],[88.789313,67.800442],[87.894508,67.161181],[86.055194,65.562190],[84.833746,62.956478],[83.777328,53.137741],[83.028408,43.963451],[81.564438,34.493211],[75.271219,12.667091],[67.455058,-8.551710],[65.517629,-11.769745],[64.558106,-12.149687],[63.279278,-11.977490],[61.965014,-12.213539],[60.676234,-13.337851],[57.900368,-16.682570],[54.808183,-18.755856],[49.737064,-21.068953],[37.833968,-25.729440],[31.086690,-27.290668],[19.336629,-29.051735],[7.245883,-29.818646],[2.529658,-29.456171],[-0.523452,-28.397410],[-1.042862,-27.803884],[-0.952969,-27.160432],[1.484906,-25.750371],[7.650535,-24.220469],[18.404278,-22.623970],[25.443897,-22.089865],[35.779278,-20.799760],[42.119118,-19.030220],[53.208824,-12.976313],[55.860789,-10.661748],[57.343728,-7.928660],[58.811109,-5.933432],[59.681618,-5.366160],[56.117368,-6.220264],[53.261587,-7.356081],[50.448832,-8.394399],[47.013658,-8.956010],[42.905314,-5.261056],[41.044153,-2.473184],[40.259748,0.137741],[40.546468,0.950280],[41.336122,1.157966],[43.947183,0.308166],[49.957008,-2.606400],[58.132453,-0.175072],[62.830780,2.038863],[64.560776,3.416772],[65.583968,4.983451],[69.673808,15.254931],[72.357408,22.594781],[75.077609,29.924490],[77.224973,39.641440],[78.463945,49.777929],[78.458968,58.366261],[77.493554,63.234708],[75.880838,68.075241],[74.470374,72.159216],[74.894508,74.206101],[75.188052,76.408627],[74.283028,80.051000],[72.476714,84.270923],[70.066388,88.206101],[65.378888,95.424851],[61.852391,100.460576],[57.320900,104.798114],[51.199751,108.900681],[42.904278,113.231491],[34.494428,116.856324],[25.994373,119.680851],[17.341646,121.710962],[8.473778,122.952546],[-0.671698,123.411495],[-10.157251,123.093697],[-20.045348,122.005043],[-30.398457,120.151421],[-36.879503,119.082801],[-38.317158,119.386109],[-39.494160,120.258841],[-41.873917,121.445178],[-45.962910,121.258841],[-54.459247,120.571178],[-58.168042,119.699517],[-59.351942,118.924620],[-59.884785,117.844781],[-59.656747,114.923990],[-58.474338,112.783646],[-56.781821,111.810588],[-55.023457,112.391651],[-52.311792,114.401658],[-50.023867,115.385185],[-47.146504,115.852591],[-45.551938,115.457521],[-45.101169,114.303190],[-45.942599,112.604223],[-48.224629,110.575241],[-55.310163,104.474652],[-63.779316,94.661181],[-67.686474,88.712219],[-70.937539,81.435067],[-73.621700,72.587380],[-75.828144,61.926811],[-75.667231,58.131538],[-74.390644,53.008841],[-70.970722,40.512741],[-67.219543,26.739911],[-62.367226,13.295277],[-56.985114,1.583399],[-51.644551,-6.991160],[-45.377683,-13.925541],[-38.683847,-18.790825],[-30.506495,-22.173268],[-19.789082,-24.659130],[-11.661164,-26.244370],[-8.890354,-27.774294],[-8.764167,-28.813976],[-9.834003,-30.071240],[-16.079981,-30.562827],[-21.475950,-30.413568],[-26.589032,-29.556525],[-31.986347,-27.924760],[-37.185866,-27.257386],[-42.226582,-25.618110],[-47.213500,-22.306232],[-51.811729,-18.539800],[-59.536295,-10.761428],[-66.957051,-2.049760],[-71.725494,-2.363436],[-74.069358,-2.678428],[-74.607132,-3.018286],[-74.484394,-3.534130],[-68.110490,-14.327735],[-64.641381,-21.837331],[-63.884824,-24.692906],[-64.179707,-26.405220],[-64.577340,-27.710089],[-64.078004,-29.532718],[-61.370044,-34.154337],[-58.019064,-39.116243],[-55.988301,-43.264599],[-55.025529,-45.624490],[-53.278522,-47.457743],[-47.884785,-52.286084],[-46.598830,-56.240652],[-46.322030,-59.171905],[-45.284127,-62.315033],[-41.714863,-66.905224],[-41.462910,-67.114209],[-41.068743,-61.924694],[-40.277363,-58.206006],[-39.016895,-55.774575],[-37.557436,-54.203899],[-31.669941,-51.840771],[-28.473228,-51.297889],[-25.148777,-51.489084],[-21.874983,-52.346936],[-18.830245,-53.804025],[-16.192959,-55.792933],[-14.141522,-58.246239],[-12.854331,-61.096524],[-12.509785,-64.276368],[-14.441425,-65.436524],[-16.933613,-65.645509],[-17.586517,-62.016557],[-19.602732,-58.809812],[-22.543665,-56.473551],[-25.970722,-55.456056],[-29.501855,-56.008765],[-33.875019,-58.293946],[-36.018597,-61.230194],[-37.152363,-66.307618],[-36.783222,-70.973634],[-31.740357,-73.496602],[-26.919941,-74.336915],[-26.017597,-74.215821],[-22.296281,-72.823011],[-19.636738,-71.045899],[-17.915055,-70.229912],[-17.102106,-70.031865],[-16.562519,-70.340821],[-15.509686,-70.840014],[-14.944343,-71.730787],[-15.020337,-73.286151],[-15.577483,-78.405018],[-14.811026,-79.899545],[-12.798847,-78.920899],[-9.839200,-76.754127],[-7.754972,-76.597163],[-7.018853,-78.653337],[-8.103532,-83.125978],[-8.552857,-85.552485],[-6.130882,-87.407228],[-3.170605,-89.814282],[0.064021,-91.086561],[9.605448,-91.756837],[21.745108,-90.654272],[31.705058,-88.227540],[39.708968,-84.202149],[40.200214,-86.308014],[39.505838,-88.950196],[38.158005,-90.191493],[37.996350,-92.322680],[42.748028,-106.188478],[47.529278,-115.940431],[49.874712,-118.782984],[52.761698,-121.127931],[54.719988,-122.335568],[55.917512,-121.340070],[56.485206,-118.721922],[56.554004,-115.061609],[55.718661,-106.936427],[54.458968,-101.608399],[55.048200,-100.986448],[56.695083,-101.474189],[58.561311,-102.761946],[59.808578,-104.540040],[60.736376,-110.241885],[60.737221,-117.345053],[60.099916,-123.861145],[59.113268,-127.801759],[57.766764,-129.301903],[55.951158,-129.811524]]);
       translate([0, 0, -fudge])
         linear_extrude(height=h+2*fudge)
           polygon([[-82.859394,97.538081],[-80.833055,98.529031],[-78.454838,101.436431],[-74.015644,109.270511],[-73.375660,111.390961],[-73.436747,113.143358],[-74.069997,114.018901],[-75.146504,113.508791],[-78.498783,112.266731],[-83.888014,111.782666],[-91.751972,111.786131],[-92.391032,111.306837],[-92.256313,110.017208],[-90.243989,105.896478],[-86.871886,101.202996],[-83.296894,97.715821],[-82.859394,97.538081]]);
    }
    linear_extrude(height=h)
      polygon([[46.281228,-84.561524],[45.664505,-83.796405],[45.378453,-82.032763],[45.521814,-80.068170],[46.193328,-78.700196],[50.971727,-73.573343],[56.197238,-66.040040],[57.446678,-63.005680],[57.291140,-62.327099],[56.646458,-61.922852],[55.521251,-61.072449],[55.338877,-59.962529],[56.030018,-58.890388],[57.525358,-58.153321],[59.176509,-57.303942],[59.302708,-55.747071],[59.435720,-54.186617],[61.124968,-53.331056],[63.107262,-52.154913],[64.828958,-49.659966],[66.313406,-45.799881],[67.583958,-40.528320],[68.993854,-35.630144],[70.757788,-32.233400],[73.156102,-28.470865],[75.824693,-22.752945],[81.314617,-7.949101],[85.911379,7.181832],[88.298798,17.643551],[89.538441,25.600284],[91.504137,34.715414],[94.098121,42.241390],[95.600170,44.549836],[97.222628,45.430661],[97.670385,40.962473],[97.026390,33.807852],[93.415759,14.866123],[88.295966,-4.540895],[83.572238,-17.559570],[74.619108,-34.971680],[72.007518,-39.962532],[70.863258,-43.372071],[70.751928,-47.567384],[77.219121,-48.164481],[80.442670,-48.761267],[82.955048,-49.745118],[82.600000,-50.747552],[81.101102,-51.598034],[76.776458,-52.957458],[74.190525,-54.052020],[74.865014,-54.571425],[77.552708,-55.110352],[83.892548,-55.625978],[84.362328,-57.508451],[83.757508,-58.621294],[80.237189,-59.287085],[75.157833,-59.121345],[70.345678,-59.622071],[69.308646,-60.235049],[69.888818,-60.777124],[73.629492,-61.867131],[77.025134,-63.329237],[77.174016,-64.336435],[75.533178,-65.600587],[71.804342,-66.064253],[66.921848,-66.163087],[62.571491,-67.457130],[59.435518,-69.799806],[52.311239,-78.778605],[46.281218,-84.561524]]);
    linear_extrude(height=h)
      polygon([[32.035138,-75.385743],[29.205036,-74.360234],[26.393624,-71.731945],[24.238906,-68.173231],[23.378888,-64.356446],[24.072809,-61.517045],[25.834898,-58.509724],[28.389489,-55.828107],[31.460918,-53.965821],[38.675845,-53.047947],[42.836673,-53.095380],[45.572248,-53.624024],[48.436146,-55.916501],[50.162139,-59.017570],[50.848390,-62.579610],[50.593058,-66.255003],[49.494304,-69.696127],[47.650289,-72.555364],[45.159173,-74.485094],[42.119118,-75.137696],[40.709428,-74.916776],[40.092505,-74.286099],[40.488889,-73.132490],[42.119118,-71.342774],[44.000193,-69.350327],[45.846518,-66.431132],[46.466841,-63.008285],[45.944985,-61.240210],[44.669908,-59.504884],[42.143810,-57.230227],[37.845688,-56.840821],[34.313240,-57.482661],[31.499474,-58.695400],[29.444564,-60.374742],[28.188684,-62.416390],[27.772010,-64.716048],[28.234716,-67.169419],[29.616977,-69.672208],[31.958968,-72.120118],[33.304052,-73.536895],[33.636905,-74.558729],[33.149839,-75.177664],[32.035168,-75.385743]]);
    linear_extrude(height=h)
      polygon([[36.304668,-69.651368],[35.087868,-69.444337],[33.132685,-67.811005],[33.078108,-64.409181],[34.756519,-62.909860],[36.303355,-62.272005],[37.832008,-62.807618],[39.005347,-64.894294],[38.989729,-67.098510],[38.013415,-68.868218],[36.304668,-69.651368]]);
    linear_extrude(height=h)
      polygon([[-25.103535,-68.530274],[-26.797279,-68.104405],[-28.159894,-66.891367],[-28.583684,-64.988017],[-27.460957,-62.491212],[-25.314710,-60.795229],[-23.308508,-60.778990],[-21.795522,-61.766324],[-21.128925,-63.081056],[-21.229019,-65.427595],[-21.991710,-67.153949],[-23.316661,-68.206161],[-25.103535,-68.530274]]);
    linear_extrude(height=h)
      polygon([[3.064438,-67.481446],[2.660138,-67.477546],[1.681618,-67.262702],[-0.969181,-65.535796],[-3.099609,-62.929204],[-4.404850,-60.256451],[-4.580092,-58.331062],[-2.493809,-57.410773],[3.283188,-57.176765],[11.985525,-57.698130],[16.183855,-59.017984],[16.568981,-59.955262],[15.798062,-61.065665],[10.748028,-63.770515],[6.158509,-66.192826],[3.064438,-67.481452]]);
    linear_extrude(height=h)
      polygon([[9.136698,-51.163087],[7.236384,-50.554056],[5.344218,-49.050722],[4.203761,-47.138728],[4.558578,-45.303712],[6.687478,-42.727540],[9.517104,-42.418058],[13.210918,-43.260743],[13.824937,-43.861852],[13.944370,-44.879810],[13.046764,-47.553538],[11.212680,-50.056454],[9.136698,-51.163087]]);
    linear_extrude(height=h)
      polygon([[6.687478,-9.653320],[3.028345,-8.059035],[-1.740366,-4.472077],[-5.745838,-0.655915],[-7.115252,1.625981],[-6.212504,2.225359],[-4.939472,2.213871],[5.390595,-1.090700],[8.629462,-1.746191],[11.628888,-1.452150],[15.994854,0.499777],[19.478498,1.975581],[20.611044,1.258663],[21.941388,-0.049810],[20.111576,-1.953982],[18.083968,-3.266600],[12.662188,-7.213503],[9.509507,-8.941829],[6.687478,-9.653320]]);
    linear_extrude(height=h)
      polygon([[-36.007832,-4.588870],[-40.142963,-3.656552],[-45.480468,-1.453602],[-50.200796,1.128980],[-52.484394,3.200191],[-51.904944,4.343763],[-49.478634,5.034842],[-45.289090,4.856934],[-39.419941,3.393551],[-35.585962,3.527965],[-31.603032,4.407748],[-30.176220,4.374734],[-29.456780,3.625160],[-29.692916,1.858058],[-31.132832,-1.227540],[-32.714721,-3.435466],[-34.065060,-4.261385],[-36.007832,-4.588870]]);
    linear_extrude(height=h)
      polygon([[31.935528,12.985351],[27.694162,14.383135],[24.136075,17.301654],[21.688164,20.481944],[20.777328,22.665041],[21.668904,23.124242],[24.104409,23.074549],[32.171858,21.190431],[35.260413,21.615457],[38.715182,22.661629],[41.744968,23.210482],[42.853245,22.948893],[43.558578,22.143551],[42.203151,20.157272],[38.975519,17.030679],[35.133654,14.170972],[31.935528,12.985351]]);
    linear_extrude(height=h)
      polygon([[-12.417993,16.596681],[-12.974629,16.604681],[-16.130425,18.544743],[-18.906480,20.927208],[-23.875019,26.428901],[-22.505151,26.823206],[-19.103535,26.337101],[-11.628923,24.497261],[-6.108137,25.436711],[-2.267162,25.733219],[-0.425802,25.133981],[-1.838785,23.347058],[-5.215680,20.564447],[-9.195684,17.932325],[-12.417993,16.596871]]);
    linear_extrude(height=h)
      polygon([[-52.099629,20.258791],[-54.721979,20.604673],[-57.237123,21.817862],[-63.003925,26.696291],[-63.226040,27.427379],[-62.325461,27.980486],[-60.218704,28.045793],[-56.822285,27.313481],[-51.913405,26.803793],[-46.582051,26.834961],[-43.878989,27.356787],[-41.956878,27.397856],[-40.949238,26.749061],[-41.265145,25.557611],[-42.254838,24.404948],[-43.787129,23.190471],[-48.438782,21.041393],[-52.099629,20.258831]]);
    linear_extrude(height=h)
      polygon([[87.218728,76.643551],[85.956739,77.405260],[85.109358,79.405271],[83.372977,85.395937],[80.554587,92.126505],[77.024325,98.814816],[73.152328,104.678711],[69.093074,108.840534],[67.881547,110.616911],[67.589828,113.196291],[68.059896,113.793696],[69.182454,113.620410],[72.665941,111.600110],[79.552718,105.333011],[83.268844,98.540967],[86.494968,89.815769],[88.545378,81.923899],[88.734358,77.631841],[87.218728,76.643551]]);
  }
}

poly_path2991(4);
