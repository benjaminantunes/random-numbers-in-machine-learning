import numpy as np


def generate_at_once_numpy(n):
    rng = np.random.Generator(np.random.MT19937(seed=0))  # Explicitly use the MT19937 method
    numbers = rng.random(n)

numbers = generate_at_once_numpy(2**30)

