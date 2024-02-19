clang gmp-chudnovsky.c -o test_orig -lgmp -lm
clang gmp-chudnovsky.c -o test_sub_1 -lgmp -lm -mllvm --enable-subobf  -mllvm --sub_prob=100 -mllvm --sub_loop=1 -mllvm --aesSeed=1337
clang gmp-chudnovsky.c -o test_sub_2 -lgmp -lm -mllvm --enable-subobf  -mllvm --sub_prob=100 -mllvm --sub_loop=2 -mllvm --aesSeed=1337
clang gmp-chudnovsky.c -o test_cff -lgmp -lm -mllvm --enable-cffobf -mllvm --aesSeed=1337
clang gmp-chudnovsky.c -o test_indir -lgmp -lm -mllvm --enable-indibran -mllvm --aesSeed=1337
clang gmp-chudnovsky.c -o test_bcf -lgmp -lm -mllvm --enable-bcfobf -mllvm --bcf_prob=100 -mllvm --aesSeed=1337