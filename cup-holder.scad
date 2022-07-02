include <params.scad>;

difference()
{
    cylinder(h=h_cup_holder, d=d_cup_holder, $fn=500);

    translate([d_cup_holder / -2, y_support / -2, -1])
    {
        cube([x_support, y_support, h_cup_holder + 2]);
    }

    translate([d_cup_holder / 2 - x_support, y_support / -2, -1])
    {
        cube([x_support, y_support, h_cup_holder + 2]);
    }
}
