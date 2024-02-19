#!/bin/bash

clang main.c -o example
clang main.c -o example_obf -mllvm --enable-bcfobf -mllvm --bcf_prob=100 -mllvm --enable-indibran -mllvm --enable-subobf -mllvm --sub_prob=100 -mllvm --sub_loop=1 -mllvm --aesSeed=1337