#include <stdio.h>

#ifdef OBF
__attribute((__annotate__("sub sub_prob=100 sub_loop=2"))) void fibonacci();
#endif

void fibonacci() 
{
    int a = 0;
    int b = 1;
    int c = 1;
    for (int i = 0; i < 10; i++) 
    {
        printf("%d\n", c);
        c = a + b;
        a = b;
        b = c;
    }
}

int main(int argc, char** argv) 
{
    fibonacci();
    return 0;
}