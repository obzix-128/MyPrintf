#include <stdio.h>

extern "C" void myPrintf(const char* str, ...); // Объявляем функцию my_printf

int main() {
    myPrintf("%s\n%x = {%c}", "0123456789 0123456789", 128, 'a'); // Вызываем my_printf
    return 0;
}