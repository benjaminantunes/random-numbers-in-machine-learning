import numpy as np



def generate_one_by_one_numpy(n):
    rng = np.random.Generator(np.random.Philox(seed=0))
    for _ in range(n):
        number = rng.integers(low=0, high=2**32,size=1,dtype=np.uint32)

generate_one_by_one_numpy(2**30)

