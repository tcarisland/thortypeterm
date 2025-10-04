#include <stdio.h>
#include <string.h>
#include "functions.h"

void printSomeStuff(int args, char *arguments[]) {
    printf("Hello, I'm now about to print your %d arguments\n", args);
    int i;
    for(i = 0; i < args; i++) {
        printf("argv %d %lu %s\n", i, strlen(arguments[i]) * sizeof(char), arguments[i]);
    }
}