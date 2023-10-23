import tensorflow as tf
import numpy as np


def generate_and_save_numbers_tensorflow(filename):
    #tf.random.set_seed(0)
    generator = tf.random.Generator.from_seed(0, alg="philox")

    chunk_size = 2**20

    total_numbers = 2**39
    
    with open(filename, 'wb') as f:
        for _ in range(total_numbers // chunk_size):
            numbers = generator.uniform_full_int(shape=[chunk_size],dtype=np.uint32)
            
            numbers.numpy().astype('uint32').tofile(f)

        # Handle any remaining numbers if total_numbers is not a multiple of chunk_size
        remaining = total_numbers % chunk_size
        if remaining > 0:
            numbers = generator.uniform_full_int(shape=[remaining],dtype=np.uint32)

            numbers.numpy().astype('uint32').tofile(f)

generate_and_save_numbers_tensorflow("/mnt/data/tensorflowReal.bin")
