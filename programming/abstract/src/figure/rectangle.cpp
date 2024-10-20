#include "rectangle.h"

Rectangle::Rectangle(double width, double height){
    this->width = new double(width);
    this->height = new double(height);
}

Rectangle::~Rectangle(){
    delete this->width;
    delete this->height;
}

double Rectangle::getWidth(){
    return *(this->width);
}

double Rectangle::getHeight(){
    return *(this->height);
}

void Rectangle::setWidth(double width){
    *(this->width) = width;
}

void Rectangle::setHeight(double height){
    *(this->height) = height;
}

double Rectangle::calcArea(){
    double width = *(this->width);
    double height = *(this->height);
    return width * height;
}

void Rectangle::show() {
    const std::string RESET = "\033[0m";
    const std::string RED = "\033[31m";
    const std::string GREEN = "\033[32m";
    const std::string YELLOW = "\033[33m";
    const std::string BLUE = "\033[34m";
    const std::string MAGENTA = "\033[35m";
    const std::string CYAN = "\033[36m";

    std::cout << CYAN << "┌───────────────────────────────────────┐" << RESET << std::endl;
    std::cout << CYAN << "│" << MAGENTA << "           Rectangle Info              " << CYAN << "│" << RESET << std::endl;
    std::cout << CYAN << "├───────────────────────────────────────┤" << RESET << std::endl;
    std::cout << CYAN << "│ " << YELLOW << "Width:  " << GREEN << std::setw(28) << std::fixed << std::setprecision(2) << *width << CYAN << "  │" << RESET << std::endl;
    std::cout << CYAN << "│ " << YELLOW << "Height: " << GREEN << std::setw(28) << std::fixed << std::setprecision(2) << *height << CYAN << "  │" << RESET << std::endl;
    std::cout << CYAN << "│ " << YELLOW << "Area:   " << BLUE << std::setw(28) << std::fixed << std::setprecision(2) << calcArea() << CYAN << "  │" << RESET << std::endl;
    std::cout << CYAN << "└───────────────────────────────────────┘" << RESET << std::endl;
}

Figure* Rectangle::copy(){
    return new Rectangle(*(this->width), *(this->height));
}
