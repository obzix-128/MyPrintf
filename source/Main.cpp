#include <stdio.h>

extern "C" void myPrintf(const char* str); // Объявляем функцию my_printf

int main() {
    myPrintf("Hello, World!0123456789\n"); // Вызываем my_printf
    return 0;
}