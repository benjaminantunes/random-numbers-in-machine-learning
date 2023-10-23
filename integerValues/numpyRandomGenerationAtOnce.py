import numpy as np


"""
for small operations, like generating a single random number, the overhead of using TensorFlow or PyTorch can be higher compared to Python's built-in random module or NumPy. However, these libraries aren't really designed for such small, isolated operations. They shine in large-scale, batched operations.

We will compare generation one by one and in batch, for classic and ML technologies.
"""

def generate_at_once_numpy(n):
    rng = np.random.default_rng(seed=0)
    numbers = rng.integers(low=0, high=2**32,size=n,dtype=np.uint32)

generate_at_once_numpy(2**30)

