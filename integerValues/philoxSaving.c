

#include "./Random123-1.09/include/Random123/philox.h"
#include <stdio.h>

// Documentation : https://www.thesalmons.org/john/random123/releases/1.00/docs/index.html

int main (void){
    philox4x32_ctr_t c={{0,0}};
    philox4x32_key_t k={{0,0}};

    //Seed = Key. Counter can also act as seed, because slight change on Key or Counter will affect the generated suite.



    FILE *file = fopen("/mnt/data/philoxReal.bin", "wb");
    if (file == NULL) {
        fprintf(stderr, "Couldn't open file for writing.\n");
        exit(1);
    }

    unsigned long long times = 1ULL << 39; // 2^39

    for (unsigned long long i = 0; i < times; i++) {
        c.v[0] = i; /* some loop-dependent application variable */
        c.v[1] = i+1; /* another loop-dependent application variable */
        philox4x32_ctr_t rand = philox4x32(c, k);
        unsigned int number = (unsigned int)rand.v[0];

        fwrite(&number, sizeof(unsigned int), 1, file);
    }

    fclose(file);
    return 0;

}

