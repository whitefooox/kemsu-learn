#include <iostream>
#include "./figure/circle.h"
#include "./figure/rectangle.h"

int main(){
    Figure* circle = new Rectangle(100, 200);

    std::cout << circle->calcArea() << std::endl;
    circle->show();
    delete circle;
}