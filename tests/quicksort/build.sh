clang src-quicksort.c -o test_orig -lgmp -lm
clang src-quicksort.c -o test_sub_1 -lgmp -lm -mllvm --enable-subobf  -mllvm --sub_prob=100 -mllvm --sub_loop=1
clang src-quicksort.c -o test_sub_2 -lgmp -lm -mllvm --enable-subobf  -mllvm --sub_prob=100 -mllvm --sub_loop=2
clang src-quicksort.c -o test_sub_3 -lgmp -lm -mllvm --enable-subobf  -mllvm --sub_prob=100 -mllvm --sub_loop=3
clang src-quicksort.c -o test_sub_4 -lgmp -lm -mllvm --enable-subobf -mllvm --sub_prob=100 -mllvm --sub_loop=4
clang src-quicksort.c -o test_cff -lgmp -lm -mllvm --enable-cffobf
clang src-quicksort.c -o test_indir -lgmp -lm -mllvm --enable-indibran