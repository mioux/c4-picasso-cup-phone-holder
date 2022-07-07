include <params.scad>;

union()
{
    intersection()
    {
        union()
        {
            translate([d_up_cup_holder / -2, (y_support - 0.5) / -2, 0])
            {
                cube([x_support, y_support - 0.5, h_cup_holder]);
            }

            translate([d_up_cup_holder / 2 - x_support, (y_support - 0.5) / -2, 0])
            {
                cube([x_support, y_support - 0.5, h_cup_holder]);
            }
        }

        cylinder(h=h_cup_holder, d1=d_down_cup_holder, d2=d_up_cup_holder, $fn=500);

    }

    // From https://github.com/mioux/pixel_6-stand
    // I don't want to rewrite all :D
    translate([-43, (y_support - 0.5) / -2, h_cup_holder - 6])
    {
        difference()
        {
            union()
            {
                translate([0, 3 * cos(20), 6.2 * cos(20)])
                {
                    // Main support

                    union()
                    {
                        // Phone holder

                        difference()
                        {
                            cube([86, 17, 80]);
                            translate([-1, -1, 30])
                            {
                                cube([90, 15, 60]);
                            }
                        }

                        // Front plate
                        translate([0, -3, 0])
                        {
                            union()
                            {
                                cube([86, 3, 30]);

                                translate([0, 0, 30]) cube([10, 3, 10]);

                                translate([76, 0, 30]) cube([10, 3, 10]);

                                // Right suppport lock
                                translate([10, 0, 40])
                                rotate([-90, 0, 0]) cylinder(h=3, d=3, center=false, $fn=100);

                                translate([8.5, 0, 0]) cube([3, 3, 40]);

                                translate([0, 0, 40]) cube([10, 3, 1.5]);

                                // Right suppport lock
                                translate([76, 0, 40])
                                rotate([-90, 0, 0]) cylinder(h=3, d=3, center=false, $fn=100);

                                translate([74.5, 0, 0]) cube([3, 3, 40]);

                                translate([76, 0, 40]) cube([10, 3, 1.5]);
                            }
                        }

                    }
                }
            }

            translate([0, 3 * cos(20), 6.5 * cos(20)])
            {
                union()
                {
                    translate([55, 3, -21]) cube([13, 8, 65]);
                    translate([37, 3.5, 7]) cube([12, 7, 30]);
                    translate([43, 6.9, -21]) cylinder(d=4.2, h=65, $fn=100);
                    translate([43, 4.8, -21]) cube([20, 4.2, 65]);
                }
            }

            translate([10,10,35.82])
            {
                cube([66, 10, 400]);
            }

            translate([43,7.62,6])
                rotate([-90, 0, 0])
                    cylinder(d=5,h=100,$fn=100);


            translate([40.5, 7.62, 7])
                cube([5,7,5]);
        }
    }
}
