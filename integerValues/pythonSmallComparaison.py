import random
import struct

def generate_and_save_numbers_pure_python(filename):
    random.seed(0)
    with open(filename, 'w') as f:
        for i in range(100):
            number = random.randint(0, 2**32 - 1)
            f.write(str(number))
            
            if (i + 1) % 10 == 0:
                f.write('\n')
            else:
                f.write(' ')

generate_and_save_numbers_pure_python("./pythonSmallComparaison.txt")

