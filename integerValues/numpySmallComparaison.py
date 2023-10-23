import numpy as np

def generate_and_save_numbers_numpy(filename):
    rng = np.random.default_rng(seed=0)

    with open(filename, 'w') as f:
        for i in range(100):
            number = rng.integers(low=0, high=2**32 - 1, size=1, dtype=np.uint32)[0]
            f.write(str(number))
            
            if (i + 1) % 10 == 0:
                f.write('\n')
            else:
                f.write(' ')

generate_and_save_numbers_numpy("./numpySmallComparaison.txt")

