

#include "./Random123-1.09/include/Random123/philox.h"
#include <stdio.h>

// Documentation : https://www.thesalmons.org/john/random123/releases/1.00/docs/index.html

int main (void){
    philox4x32_ctr_t c={{0,0}};
    philox4x32_key_t k={{0,0}};

    //Seed = Key. Counter can also act as seed, because slight change on Key or Counter will affect the generated suite.



    FILE *file = fopen("./philoxSmallComparaison.txt", "w");
    if (file == NULL) {
        fprintf(stderr, "Couldn't open file for writing.PHILOX\n");
        exit(1);
    }

    unsigned long long times = 100;

    for (unsigned long long i = 0; i < times; i++) {
        c.v[0] = i; /* some loop-dependent application variable */
        c.v[1] = i+1; /* another loop-dependent application variable */
        philox4x32_ctr_t rand = philox4x32(c, k);
        unsigned int number = (unsigned int)rand.v[0];
        fprintf(file, "%u", number);

        if ((i + 1) % 10 == 0) {
            // Write a newline character after every 10 numbers (10 per row)
            fprintf(file, "\n");
        } else {
            // Write a space character to separate numbers within the same row
            fprintf(file, " ");
        }
    }
    fclose(file);
    return 0;

}

