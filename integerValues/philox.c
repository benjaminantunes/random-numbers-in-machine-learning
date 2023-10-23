#include "./Random123-1.09/include/Random123/philox.h"
#include <stdio.h>
// Documentation : https://www.thesalmons.org/john/random123/releases/1.00/docs/index.html


int main (void){
    philox4x32_ctr_t c={{0,0}};
    philox4x32_key_t k={{0,0}};

    //Seed = Key. Counter can also act as seed, because slight change on Key or Counter will affect the generated suite.

    unsigned long long times = 1ULL << 30;

    for(unsigned long long i = 0; i < times; i=i+2){
        c.v[0] = i; /* some loop-dependent application variable */
        c.v[1] = i+1; /* another loop-dependent application variable */
        philox4x32_ctr_t rand = philox4x32(c, k);
        unsigned int rand1 = (unsigned int)rand.v[0];
        unsigned int rand2 = (unsigned int)rand.v[1];
        
        // When optimizing compilation with -O2 and -O3, compiler break the code and the code runs instantly,
        // not taking account of the numbers of random number that we are generating.
        // I add this small operation to force the compiler to truly generates these random numbers.
        
        long long x = rand1 - 1;
        long long y = rand2 - 1;

	    
    }
}

