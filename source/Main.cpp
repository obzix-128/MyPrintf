#include <stdio.h>

extern "C" int myPrintf(const char* str, ...); // Объявляем функцию my_printf

int main() 
{
    int return_value = 0;

    return_value = myPrintf("%d %s %x %d%%%c%b%a\n", -1, "love", 3802, 100, 33, 126); // Вызываем my_printf
    printf("return_value = %b\n", return_value);
    myPrintf("return_value = %b\n", return_value);

    return 0;
}