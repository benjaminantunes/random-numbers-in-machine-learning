import tensorflow as tf
import numpy as np


def generate_and_save_numbers_tensorflow(filename):
    tf.random.set_seed(0)
    chunk_size = 2**20

    total_numbers = 2**39
    
    with open(filename, 'wb') as f:
        for _ in range(total_numbers // chunk_size):
            numbers = tf.random.uniform(shape=[chunk_size], minval=0., maxval=1.)
            
            numbers.numpy().astype('float64').tofile(f)

        # Handle any remaining numbers if total_numbers is not a multiple of chunk_size
        remaining = total_numbers % chunk_size
        if remaining > 0:
            numbers = tf.random.uniform(shape=[remaining], minval=0., maxval=1.)

            numbers.numpy().astype('float64').tofile(f)

generate_and_save_numbers_tensorflow("/mnt/data/tensorflowReal.bin")
