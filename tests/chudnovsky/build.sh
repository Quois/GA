clang gmp-chudnovsky.c -o test_orig -lgmp -lm
clang gmp-chudnovsky.c -o test_sub_1 -lgmp -lm -mllvm --enable-subobf  -mllvm --sub_prob=100 -mllvm --sub_loop=1
clang gmp-chudnovsky.c -o test_sub_2 -lgmp -lm -mllvm --enable-subobf  -mllvm --sub_prob=100 -mllvm --sub_loop=2
clang gmp-chudnovsky.c -o test_sub_3 -lgmp -lm -mllvm --enable-subobf  -mllvm --sub_prob=100 -mllvm --sub_loop=3
clang gmp-chudnovsky.c -o test_sub_4 -lgmp -lm -mllvm --enable-subobf -mllvm --sub_prob=100 -mllvm --sub_loop=4
clang gmp-chudnovsky.c -o test_cff -lgmp -lm -mllvm --enable-cffobf
clang gmp-chudnovsky.c -o test_indir -lgmp -lm -mllvm --enable-indibran