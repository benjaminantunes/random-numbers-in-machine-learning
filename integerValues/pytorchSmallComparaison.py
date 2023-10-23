import torch

def generate_and_save_numbers_pytorch(filename):
    torch.manual_seed(0)

    with open(filename, 'w') as f:
        for i in range(100):
            number = torch.randint(high=2**32 - 1, size=(1,))
            f.write(str(number.item()))  # Convert tensor to Python integer and write as a string
            
            if (i + 1) % 10 == 0:
                f.write('\n')
            else:
                f.write(' ')

generate_and_save_numbers_pytorch("./pytorchSmallComparaison.txt")

