#ifndef FIGURE_H
#define FIGURE_H

#include <iostream>

class Figure {
public:
    Figure();
    virtual double calcArea() = 0;
    virtual void show() = 0;
    virtual ~Figure();
};

#endif