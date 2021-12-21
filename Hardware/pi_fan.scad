$fn = 50;

module fan(solid_holes = 0) {
    difference() {
        color("black") cube([4, 4, 1]);

        translate([0.375, 0.375, -0.2]) cylinder(h = 1.4, d = 0.35);
        translate([0.375, 4 - 0.375, -0.2]) cylinder(h = 1.4, d = 0.35);
        translate([4 - 0.375, 4 - 0.375, -0.2]) cylinder(h = 1.4, d = 0.35);
        translate([4 - 0.375, 0.375, -0.2]) cylinder(h = 1.4, d = 0.35);
    }
    if (solid_holes) {
        translate([0.375, 0.375, -1]) cylinder(h = 2, d = 0.35);
        translate([0.375, 4 - 0.375, -1]) cylinder(h = 2, d = 0.35);
        translate([4 - 0.375, 4 - 0.375, -1]) cylinder(h = 2, d = 0.35);
        translate([4 - 0.375, 0.375, -1]) cylinder(h = 2, d = 0.35);
        translate([2, 2, -1]) cylinder(h = 2, d = 3.8);
    }
}
    

//translate([9.9 - 4 - 1.2, 0.5, 0.21]) fan();

projection() difference() {
    cube([9.9,5.9,0.2]);
    translate([9.9 - 4 - 1.2, 0.5, 0.21]) fan(solid_holes = 1);
}

