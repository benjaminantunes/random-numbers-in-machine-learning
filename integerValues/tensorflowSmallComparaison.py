import tensorflow as tf

def generate_and_save_numbers_tensorflow(filename):
    generator = tf.random.Generator.from_seed(0, alg="philox")
    
    with open(filename, 'w') as f:
        for i in range(100):
            numbers = generator.uniform_full_int(shape=[1], dtype=tf.uint32)
            f.write(str(numbers.numpy()[0]))  # Convert tensor to Python integer and write as a string
            
            if (i + 1) % 10 == 0:
                f.write('\n')
            else:
                f.write(' ')

generate_and_save_numbers_tensorflow("./tensorflowSmallComparaison.txt")

