import numpy as np

def generate_and_save_numbers_numpy(filename):
    rng = np.random.default_rng(seed=0)
    chunk_size = 2**20  # You can adjust this size according to your system's memory
    total_numbers = 2**39

    with open(filename, 'wb') as f:
        for _ in range(total_numbers // chunk_size):
            numbers = rng.integers(low=0, high=2**32 - 1,size=chunk_size,dtype=np.uint32)
            numbers.astype(np.uint32).tofile(f)

        # Handle any remaining numbers
        remaining = total_numbers % chunk_size
        if remaining > 0:
            numbers = rng.integers(low=0, high=2**32 - 1,size=remaining, dtype=np.uint32)
            numbers.astype(np.uint32).tofile(f)

generate_and_save_numbers_numpy("/mnt/data/numpyReal.bin")

