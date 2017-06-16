include <roundedcube.scad>;

// some variables

height = 2;
cornerradius = 1;
centerdiameter = 5;
width = 19;

union() {
	difference() {
		roundedcube([width, width, height], true, cornerradius, "z");
		translate([3.38,10,0])
			linear_extrude(height = 10, center = false)
			import(file = "ProfileI5.dxf");
		translate([0,0,1])
			cube([width-2, width-2, height], center = true);
	}
	cylinder(h=height*2, d1=centerdiameter, d2=centerdiameter-0.5);
}


