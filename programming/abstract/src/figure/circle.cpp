#include "circle.h"

Circle::Circle(double radius) : Figure() {
    this->radius = new double(radius);
}

Circle::~Circle(){
    std::cout << "Circle delete" << std::endl;
    delete this->radius;
}

void Circle::setRadius(double radius){
    *(this->radius) = radius;
}

double Circle::getRadius(){
    return *(this->radius);
}

double Circle::calcArea(){
    double radius = *(this->radius);
    return M_PI * radius;
}

void Circle::show() {    
    const std::string RESET = "\033[0m";
    const std::string RED = "\033[31m";
    const std::string GREEN = "\033[32m";
    const std::string YELLOW = "\033[33m";
    const std::string BLUE = "\033[34m";
    const std::string MAGENTA = "\033[35m";
    const std::string CYAN = "\033[36m";
    std::cout << CYAN << "┌───────────────────────────────────────┐" << RESET << std::endl;
    std::cout << CYAN << "│" << MAGENTA << "             Circle Info               " << CYAN << "│" << RESET << std::endl;
    std::cout << CYAN << "├───────────────────────────────────────┤" << RESET << std::endl;
    std::cout << CYAN << "│ " << YELLOW << "Radius: " << GREEN << std::setw(28) << std::fixed << std::setprecision(2) << *radius << CYAN << "  │" << RESET << std::endl;
    std::cout << CYAN << "│ " << YELLOW << "Area:   " << BLUE << std::setw(28) << std::fixed << std::setprecision(2) << calcArea() << CYAN << "  │" << RESET << std::endl;
    std::cout << CYAN << "└───────────────────────────────────────┘" << RESET << std::endl;
}

Figure* Circle::copy(){
    return new Circle(*(this->radius));
}