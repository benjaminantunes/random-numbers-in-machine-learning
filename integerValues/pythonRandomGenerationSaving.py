import random
import struct

def generate_and_save_numbers_pure_python(filename):
    random.seed(0)
    with open(filename, 'wb') as f:
        for _ in range(2**39):
            number = random.randint(0, 2**32 - 1)
            f.write(struct.pack('I', number))  # 'I' denotes an unsigned 32-bit integer

generate_and_save_numbers_pure_python("/mnt/data/pythonReal.bin")

