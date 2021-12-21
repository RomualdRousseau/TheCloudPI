use <electronic.scad>

module CableMgt() {
    color("white") {
        translate([2.2, -5.5, 0]) cube([10, 5.5, 53+56+40]);
        translate([24+40.5+25-8, -5.5, 0]) cube([5, 5.5, 53+56+40]);
        translate([12, -5.5, 1.5]) cube([70, 5.5, 5]);
        translate([12, -5.5, 30]) cube([70, 5.5, 10]);
        translate([12, -5.5, 40+56]) cube([70, 5.5, 10]);
    }
}

module PowerPlug() {
    color("white") {
        translate([12, -4, 30-8.5]) cube([8.5, 4, 8.5]);
    }
}

module OpticalBox() {
    color("white") {
        translate([12+18.5, -6.5, 6.5+7]) cube([9, 6.5, 15]);
    }
}

module PatchBox() {
    color("white") {
        translate([12+40, -9.5, 6.5]) cube([10, 9.5, 20]);
    }
}

module FuseBox() {
    color("grey") {
        translate([24, -13.5, 40]) cube([40.5, 13.5, 56]);
    }
}

module CVSBox() {
    color("grey") {
        translate([12+55, -8, 6.5]) cube([15, 8, 20]);
    }
}

module RaspberryPI() {
    color("blue") {
        cube([12.5, 3.5, 5.9]);
    }
}

module SwitchGiga() {
    color("black") {
        cube([11, 3, 16]);
    }
}

module Router() {
    color("black") {
        cube([18, 3, 14]);
    }
}

module Disk() {
    color("silver") {
        cube([20, 3, 10]);
    }
}

module Power12v() {
    color("silver") {
        cube([21.5, 4, 11.5]);
    }
}

module MountRacks() {
    translate([0, -6.5, 66]) color("yellow") {
        translate([2.3, 0, 37.9]) cube([84, 1, 2.1]);

        translate([21.9, 0, 30]) cube([44.7, 1, 2.1]);
        
        translate([2.3, 0, 0]) cube([21.7, 1, 2.1]);
        
        translate([64.5, 0, 0]) cube([21.8, 1, 2.1]);
        
        translate([2.3, 0, 0]) cube([2.1, 1, 40]);
        
        translate([21.9, 0, 0]) cube([2.1, 1, 32.1]);
        
        translate([64.5, 0, 0]) cube([2.1, 1, 32.1]);

        translate([84.2, 0, 0]) cube([2.1, 1, 40]);
    }
}

module Rack1() {
    translate([0, -7, 63]) {
        color("yellow") difference() {
            cube([24, 0.5, 45]);
            translate([18.5, 0, 32]) rotate([0, 90, 0]) power_plug_with_switch();
         }
   
        translate([3, -3, 2]) Router();
        
        translate([5, -3, 22]) SwitchGiga();
        
        translate([18.5, 0, 32]) rotate([0, 90, 0]) power_plug_with_switch();
    }
}

module Rack2() {
    translate([64.5, -7, 63]) {
        color("yellow") cube([25, 0.5, 45]);
    
        translate([10, -3.5, 34]) RaspberryPI();
        translate([10, -3.5, 26]) RaspberryPI();
        translate([10, -3.5, 18]) RaspberryPI();
        translate([10, -3.5, 10]) RaspberryPI();
        translate([10, -3.5, 2]) RaspberryPI();
    }
}

module Rack3() {
    translate([24, -7, 96]) {
        color("yellow") cube([40.5, 0.5, 12]);
        
        translate([21.5, 0, 11.5]) rotate([90, 180, 0]) power_supply(squares = 0);
        
        translate([25, -4, 0]) Disk();
    }
}

// wall
cube([24+40.5+25, 10, 53+56+40]);
CableMgt();
PowerPlug();
OpticalBox();
PatchBox();
FuseBox();
CVSBox();
MountRacks();
Rack1();
Rack2();
Rack3();

// door
//translate([0, -19.5 - 3, 0]) cube([24+41+25, 3, 53+56+40]);