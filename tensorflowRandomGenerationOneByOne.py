import tensorflow as tf
import gc

"""
for small operations, like generating a single random number, the overhead of using TensorFlow or PyTorch can be higher compared to Python's built-in random module or NumPy. However, these libraries aren't really designed for such small, isolated operations. They shine in large-scale, batched operations.

We will compare generation one by one and in batch, for classic and ML technologies.
"""


def generate_one_by_one_tf(n):
    tf.random.set_seed(0)
    for _ in range(n):
        number = tf.random.uniform([]).numpy()
        del number
        gc.collect()
        

generate_one_by_one_tf(2**30)
