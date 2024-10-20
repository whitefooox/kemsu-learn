#ifndef RECTANGLE_H
#define RECTANGLE_H

#include "figure.h"
#include <iomanip>

class Rectangle : public Figure {
private:
    double* width;
    double* height;
public:
    Rectangle(double widht, double height);
    ~Rectangle();
    double getWidth();
    void setWidth(double width);
    double getHeight();
    void setHeight(double height);
    double calcArea() override;
    void show() override;
    Figure* copy() override;
};

#endif