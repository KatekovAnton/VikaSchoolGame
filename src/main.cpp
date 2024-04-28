#include <stdio.h>
#include <iostream>
#include <sstream>
#include <fstream>
#include <math.h>
#include <assert.h>



int plus(int x, int y)
{
    return x+y;
}

int main(int argc, char **argv)
{
    int a = 0;// create variable a
    int b = 0;// create variable b
    std::cout << "enter a:" << std::endl; // show message
    std::cin >> a; // asked to enter value for a

    std::cout << "enter b:" << std::endl;
    std::cin >> b;
    int c = plus(a,b);
    std::cout << "a+b is " << c;

    return 0;
}
