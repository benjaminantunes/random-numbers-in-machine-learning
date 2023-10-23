import numpy as np

"""
Numpy :
The specific member of the PCG family that we use is PCG XSL RR 128/64 as described in the paper
https://numpy.org/doc/stable/reference/random/bit_generators/pcg64.html#numpy.random.PCG64

By default, like here, numpy should use PCG 64 => PCG XSL RR 128/64
"""

"""
for small operations, like generating a single random number, the overhead of using TensorFlow or PyTorch can be higher compared to Python's built-in random module or NumPy. However, these libraries aren't really designed for such small, isolated operations. They shine in large-scale, batched operations.

We will compare generation one by one and in batch, for classic and ML technologies.
"""

def generate_one_by_one_numpy(n):
    rng = np.random.default_rng(seed=0)
    for _ in range(n):
        number = rng.integers(low=0, high=2**32,size=1,dtype=np.uint32)

generate_one_by_one_numpy(2**30)

