clang branching.c -o split_blocks_obf -fno-stack-protector -s -DSPLIT
clang branching.c -o cff_obf -fno-stack-protector -s -DCFF
clang branching.c -o indibr_obf -fno-stack-protector -s -DINDIR