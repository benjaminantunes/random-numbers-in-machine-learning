import tensorflow as tf
import numpy as np
"""
for small operations, like generating a single random number, the overhead of using TensorFlow or PyTorch can be higher compared to Python's built-in random module or NumPy. However, these libraries aren't really designed for such small, isolated operations. They shine in large-scale, batched operations.

We will compare generation one by one and in batch, for classic and ML technologies.
"""


def generate_one_by_one_tf(n):
    generator = tf.random.Generator.from_seed(0, alg="philox")
    for _ in range(n):
        number = generator.uniform_full_int(shape=[1],dtype=np.uint32)
        

generate_one_by_one_tf(2**30)
