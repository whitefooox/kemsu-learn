#include <iostream>
#include "./figure/circle.h"
#include "./figure/rectangle.h"
#include "./figure/cylinder.h"

int main(){
    Figure* figure = new Circle(10);
    figure->show();
    Cylinder* cylinder = new Cylinder(figure, 10);
    delete figure;
    std::cout << cylinder->calcVolume() << std::endl;
}