#include <stdio.h>

extern "C" void myPrintf(const char* str, ...); // Объявляем функцию my_printf

int main() {
    myPrintf("x = %c\n", 'x'); // Вызываем my_printf
    return 0;
}