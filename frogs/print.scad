include <print_00.scad>;
include <print_01.scad>;

module printbits(){
    print_00(1.5);
    color("blue") print_01(3);
};

printbits();
