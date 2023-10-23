import torch
import struct
import numpy as np

"""
for small operations, like generating a single random number, the overhead of using TensorFlow or PyTorch can be higher compared to Python's built-in random module or NumPy. However, these libraries aren't really designed for such small, isolated operations. They shine in large-scale, batched operations.

We will compare generation one by one and in batch, for classic and ML technologies.
"""
def generate_one_by_one_pytorch(n):
    torch.manual_seed(0)
    for _ in range(n):
        number = torch.randint(high=2**32,size=(1,))

generate_one_by_one_pytorch(2**30)