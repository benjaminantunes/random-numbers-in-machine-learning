#include <stdio.h>
#include <stdlib.h>
#include <TestU01.h> //On utilise juste battery.h dans notre cas.

unsigned int genrand_int32() {
    static FILE *fp = NULL;
    
    // Open the binary file only once
    if (fp == NULL) {
        fp = fopen("/mnt/data/philoxReal.bin", "rb");
        if (fp == NULL) {
            perror("Failed to open the file");
            exit(EXIT_FAILURE);
        }
    }
    
    unsigned int num;
    size_t read_size = fread(&num, sizeof(unsigned int), 1, fp);
    
    if (read_size != 1) {
        if (feof(fp)) {
            fprintf(stderr, "Error: Reached the end of the file.\n");
            exit(EXIT_FAILURE);
        } else if (ferror(fp)) {
            perror("Error reading the file");
            exit(EXIT_FAILURE);
        }
    }
    
    return num;
}


int main(int argc, char ** argv) {


  // Initialise TestU01
  unif01_Gen* gen = unif01_CreateExternGenBits("philoxReal",genrand_int32);
  
  bbattery_BigCrush(gen);

  // Clean up.

  unif01_DeleteExternGenBits(gen);
  
  
  return 0;
}

