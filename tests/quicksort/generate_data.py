import random

MAX_SIZE = 10000000
NUMBERS = 10000000

with open('numbers.txt', 'w') as f:
    for i in range(NUMBERS):
        f.write(str(random.randint(0, MAX_SIZE)) + '\n')