import numpy as np


def generate_at_once_numpy(n):
    rng = np.random.Generator(np.random.MT19937(seed=0))  # Explicitly use the MT19937 method
    numbers = rng.integers(low=0, high=2**32,size=n,dtype=np.uint32)

numbers = generate_at_once_numpy(2**30)

