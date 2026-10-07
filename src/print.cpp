/*#include "../h/print.hpp"
#include "../lib/console.h"

// Ispis običnog teksta
void printString(const char *str) {
    while (*str != '\0') {
        __putc(*str);
        str++;
    }
}

void printInt(int val) {
    if (val == 0) {
        __putc('0');
        return;
    }

    if (val < 0) {
        __putc('-');
        val = -val;
    }

    char buffer[16];
    int i = 0;

    while (val > 0) {
        buffer[i++] = (val % 10) + '0';
        val /= 10;
    }

    while (i > 0) {
        __putc(buffer[--i]);
    }
}

void printHex(uint64 val) {
    printString("0x");
    if (val == 0) {
        printString("0");
        return;
    }

    char buffer[16];
    int i = 0;

    while (val > 0) {
        int digit = val % 16;
        if (digit < 10) {
            buffer[i++] = digit + '0';
        } else {
            buffer[i++] = digit - 10 + 'A';
        }
        val /= 16;
    }


    while (i > 0) {
        __putc(buffer[--i]);
    }
}*/
