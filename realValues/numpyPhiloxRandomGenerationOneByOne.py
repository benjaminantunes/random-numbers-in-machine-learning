import numpy as np



def generate_one_by_one_numpy(n):
    rng = np.random.Generator(np.random.Philox(seed=0))
    for _ in range(n):
        number = rng.random()

generate_one_by_one_numpy(2**30)

