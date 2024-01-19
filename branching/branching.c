#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#ifdef SPLIT
__attribute((__annotate__("split split_num=10"))) void function();
#endif
#ifdef CFF
__attribute((__annotate__("fla"))) void function();
#endif
#ifdef INDIR
__attribute((__annotate__("indibr"))) void function();
#endif

void function() {
    srand(time(NULL));

    for (int i = 0; i < 10; i++) {
        int n = rand() % 100;
        if (n == 0) {
            puts("Number is zero!");
        }

        if (n % 2 == 0) {
            if (n % 10 == 0) {
                puts("Number is divisible by 10!");
            } else {
                puts("Number is even!");
            }
        }

        puts("Number is odd!");
    }
}

int main(int argc, char** argv) {
    function();
    return 0;
}