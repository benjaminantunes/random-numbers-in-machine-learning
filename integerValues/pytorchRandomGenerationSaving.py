import torch
import struct
import numpy as np


def generate_and_save_numbers_pytorch(filename):
    torch.manual_seed(0)

    chunk_size = 2**20
    total_numbers = 2**39

    with open(filename, 'wb') as f:

        for _ in range(total_numbers // chunk_size):
            numbers = torch.randint(high=2**32 - 1,size=(chunk_size,))
            numbers.numpy().astype('uint32').tofile(f)

        # Handle any remaining numbers if total_numbers is not a multiple of chunk_size
        remaining = total_numbers % chunk_size
        if remaining > 0:
            numbers = torch.randint(high=2**32 - 1,size=(remaining,))
            numbers.numpy().astype('uint32').tofile(f)

generate_and_save_numbers_pytorch("/mnt/data/pytorchReal.bin")
