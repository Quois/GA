#include <stdio.h>
#include <stdlib.h>

// https://github.com/svpv/qsort
#include "qsort.h"

void isort(int A[], size_t n)
{
    int tmp;
#define LESS(i, j) A[i] < A[j]
#define SWAP(i, j) tmp = A[i], A[i] = A[j], A[j] = tmp
    QSORT(n, LESS, SWAP);
}

int main(int argc, char** argv) {
    FILE* fp = fopen("numbers.txt", "r");
    if (fp == NULL) {
        fprintf(stderr, "Error: cannot open file numbers.txt\n");
        exit(1);
    }

    char c;
    int lines = 0;
    for (c = getc(fp); c != EOF; c = getc(fp))
        if (c == '\n')
            lines += 1;
    
    rewind(fp);

    printf("Number of lines: %d\n", lines);

    int* numbers = malloc(lines * sizeof(int));

    int i = 0;
    while (fscanf(fp, "%d", &numbers[i]) != EOF) {
        i++;
    }

    isort(numbers, lines);

    puts("Sorted!");

    fclose(fp);
    return 0;
}