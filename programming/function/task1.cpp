#include <iostream>

int sumOfDigits(int number){
    int sum = 0;
    for(number; number != 0; number /= 10){
        int lastDigit = number % 10;
        sum += lastDigit;
    }
    return sum;
}

int main(){
    int number;
    int sum;

    int maxSum = 0;
    int maxNumber;

    do {
        std::cin >> number;
        sum = sumOfDigits(number);
        if(sum > maxSum){
            maxSum = sum;
            maxNumber = number;
        }
    } while (number != 0);

    std::cout << "Max sum of digit in number: " << maxNumber << std::endl;
}