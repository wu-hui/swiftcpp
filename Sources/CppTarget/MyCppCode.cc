#include "MyCppHeader.h"

MyCppClass::MyCppClass() {
    std::cout << "MyCppClass constructor called" << std::endl;
}

void MyCppClass::doSomething() {
    std::cout << "MyCppClass is doing something!" << std::endl;
}

int MyCppClass::addNumbers(int a, int b) {
    return a + b;
}
