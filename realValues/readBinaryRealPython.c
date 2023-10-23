#include <stdio.h>
#include <stdlib.h>
#include <TestU01.h> //On utilise juste battery.h dans notre cas.

double genrand_real() {
    static FILE *fp = NULL;
    
    // Open the binary file only once
    if (fp == NULL) {
        fp = fopen("/mnt/data/pythonReal.bin", "rb");
        if (fp == NULL) {
            perror("Failed to open the file");
            exit(EXIT_FAILURE);
        }
    }
    
    double num;
    size_t read_size = fread(&num, sizeof(double), 1, fp);
    
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
  unif01_Gen* gen = unif01_CreateExternGen01("pythonReal",genrand_real);
  
  bbattery_BigCrush(gen);

  // Clean up.

  unif01_DeleteExternGen01(gen);
  
  
  return 0;
}

