import numpy as np

def generate_and_save_numbers_numpy(filename):
    rng = np.random.Generator(np.random.MT19937(seed=0))
    chunk_size = 2**20  # You can adjust this size according to your system's memory
    total_numbers = 2**39

    with open(filename, 'wb') as f:
        for _ in range(total_numbers // chunk_size):
            numbers = rng.random(chunk_size)
            numbers.astype(np.float64).tofile(f)

        # Handle any remaining numbers
        remaining = total_numbers % chunk_size
        if remaining > 0:
            numbers = rng.random(remaining)
            numbers.astype(np.float64).tofile(f)

generate_and_save_numbers_numpy("/mnt/data/numpyMtReal.bin")

