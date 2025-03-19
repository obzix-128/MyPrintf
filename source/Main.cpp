#include <stdio.h>

extern "C" void myPrintf(const char* str, ...); // Объявляем функцию my_printf

int main() {
    myPrintf("%x\n", 100); // Вызываем my_printf
    return 0;
}