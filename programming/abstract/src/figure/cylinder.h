#ifndef CYLINDER_H
#define CYLINDER_H

#include "figure.h"

class Cylinder {
private:
    Figure* figure;
    double h;
public:
    Cylinder(Figure* figure, double h);
    ~Cylinder();
    double calcVolume();
};

#endif