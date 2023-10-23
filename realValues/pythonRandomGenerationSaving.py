import random
import struct

def generate_and_save_numbers_pure_python(filename):
    random.seed(0)
    with open(filename, 'wb') as f:
        for _ in range(2**39):
            number = random.random()
            f.write(struct.pack('d', number))
            
generate_and_save_numbers_pure_python("/mnt/data/pythonReal.bin")
