#include <iostream>
#include <math.h>

double calculateCircleArea(double radius){
    return M_PI * pow(radius, 2);
}

double calculateRectangleArea(double lenght, double width){
    return lenght * width;
}

double calculateRightTriangleArea(double firstLeg, double secondLeg){
    return firstLeg * secondLeg / 2;
}

int main(){

    int choice;

    do {
        std::cout << "1. Circle" << std::endl;
        std::cout << "2. Rectangle" << std::endl;
        std::cout << "3. Right triangle" << std::endl;
        std::cout << "0. Exit" << std::endl;
        std::cout << "-> ";
        std::cin >> choice;

        switch (choice)
        {
        case 1:
            {
                double radius;
                std::cout << "Radius: ";
                std::cin >> radius;
                std::cout << "Area: " << calculateCircleArea(radius) << std::endl;
                break;
            }
        case 2:
            {
                double lenght, width;
                std::cout << "Lenght: ";
                std::cin >> lenght;
                std::cout << "Width: ";
                std::cin >> width;
                std::cout << "Area: " << calculateRectangleArea(lenght, width) << std::endl;
                break;
            }
        case 3:
            {
                double firstLeg, secondLeg;
                std::cout << "First leg: ";
                std::cin >> firstLeg;
                std::cout << "Second leg: ";
                std::cin >> secondLeg;
                std::cout << "Area: " << calculateRightTriangleArea(firstLeg, secondLeg) << std::endl;
                break;
            }
        default:
            break;
        }
    } while(choice != 0);
}