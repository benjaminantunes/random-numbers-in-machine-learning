import numpy as np



def generate_at_once_numpy(n):
    rng = np.random.Generator(np.random.Philox(seed=0))
    numbers = rng.integers(low=0, high=2**32,size=n,dtype=np.uint32)

generate_at_once_numpy(2**30)

