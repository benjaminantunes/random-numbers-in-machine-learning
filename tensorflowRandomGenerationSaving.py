import tensorflow as tf
import numpy as np


def generate_and_save_numbers_tensorflow(filename):
    #tf.random.set_seed(0)
    generator = tf.random.Generator.from_seed(0, alg="philox")
    
    chunk_size = 2**20

    total_numbers = 2**39
    
    with open(filename, 'wb') as f:
        for _ in range(total_numbers // chunk_size):
            numbers = generator.uniform(shape=[chunk_size],dtype=np.float64)
            
            numbers.numpy().astype('float64').tofile(f)

        # Handle any remaining numbers if total_numbers is not a multiple of chunk_size
        remaining = total_numbers % chunk_size
        if remaining > 0:
            numbers = generator.uniform(shape=[remaining],dtype=np.float64)

            numbers.numpy().astype('float64').tofile(f)

generate_and_save_numbers_tensorflow("/mnt/data/tensorflowReal.bin")
