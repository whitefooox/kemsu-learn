#include "cylinder.h"

Cylinder::~Cylinder(){
    delete this->figure;
}

double Cylinder::calcVolume(){
    double area = this->figure->calcArea();
    return area * h;
}

Cylinder::Cylinder(Figure* figure, double h){
    this->figure = figure->copy();
    this->h = h;
}