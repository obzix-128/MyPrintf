#include <stdio.h>

extern "C" void myPrintf(const char* str, ...); // Объявляем функцию my_printf

int main() {
    myPrintf("%d %s %x %d%%%c%b\n", -1, "love", 3802, 100, 33, 126); // Вызываем my_printf
    return 0;
}