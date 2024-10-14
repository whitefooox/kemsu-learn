#ifndef CIRCLE_H
#define CIRCLE_H

#include "figure.h"
#include "math.h"
#include <iomanip>
#include <vector>

class Circle : public Figure {
private:
    double* radius;
public:
    Circle(double radius);
    ~Circle();
    double getRadius();
    void setRadius(double radius);
    double calcArea() override;
    void show() override;
};

#endif