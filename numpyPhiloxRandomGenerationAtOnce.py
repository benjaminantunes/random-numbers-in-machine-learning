import numpy as np



def generate_at_once_numpy(n):
    rng = np.random.Generator(np.random.Philox(seed=0))
    numbers = rng.random(n)

generate_at_once_numpy(2**30)

