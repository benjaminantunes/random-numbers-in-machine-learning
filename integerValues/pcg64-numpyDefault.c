/*
 * PCG Random Number Generation for C.
 *
 * Copyright 2014 Melissa O'Neill <oneill@pcg-random.org>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * For additional information about the PCG random number generation scheme,
 * including its license and other licensing options, visit
 *
 *     http://www.pcg-random.org
 */

/*
 * This file was mechanically generated from tests/check-pcg32.c
 */

#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <math.h>

#include "pcg_variants.h"

/*
            In pcg_variants.h :
            
            #define pcg64_random_r                  pcg_setseq_128_xsl_rr_64_random_r
            So when we call pcg64_random_r, we are calling pcg_setseq_128_xsl_rr_64_random_r
            
            pcg_setseq_128_xsl_rr_64_random_r(struct pcg_state_setseq_128* rng)
            {
                pcg_setseq_128_step_r(rng);
                return pcg_output_xsl_rr_128_64(rng->state);
            }
            
            We call pcg_output_xsl_rr_128_64
            
            #if PCG_HAS_128BIT_OPS
            inline uint64_t pcg_output_xsl_rr_128_64(pcg128_t state)
            {
                return pcg_rotr_64(((uint64_t)(state >> 64u)) ^ (uint64_t)state,
                                   state >> 122u);
            }
            
            So finally, we call pcg_rotr_64 to generate the number
            
            inline uint64_t pcg_rotr_64(uint64_t value, unsigned int rot)
            {
            #if 0 && PCG_USE_INLINE_ASM && __clang__ && __x86_64__
                // For whatever reason, clang actually *does* generator rotq by
                // itself, so we don't need this code.
                asm ("rorq   %%cl, %0" : "=r" (value) : "0" (value), "c" (rot));
                return value;
            #else
                return (value >> rot) | (value << ((- rot) & 63));
            #endif
            }
            
            */

int main(int argc, char** argv)
{

    pcg32_random_t rng;

    // You should *always* seed the RNG.  The usual time to do it is the
    // point in time when you create RNG (typically at the beginning of the
    // program).
    //
    // pcg64_srandom_r takes two 128-bit constants (the initial state, and the
    // rng sequence selector; rngs with different sequence selectors will
    // *never* have random sequences that coincide, at all) - the code below
    // shows three possible ways to do so.

    // Seed with a fixed constant

    pcg32_srandom_r(&rng, 0, 0);
    //long long compteur = 0;

/*
    printf("pcg32_random_r:\n"
           "      -  result:      32-bit unsigned int (uint32_t)\n"
           "      -  period:      2^64   (* 2^63 streams)\n"
           "      -  state type:  pcg32_random_t (%zu bytes)\n"
           "      -  output func: XSH-RR\n"
           "\n",
           sizeof(pcg32_random_t));
*/
    unsigned long long times = 1ULL << 30; // 2^30

    for (unsigned long long i = 0; i < times; i++) {
        /* Make some 32-bit numbers */
        unsigned int integerNumber = pcg32_random_r(&rng);
        
        // When optimizing compilation with -O2 and -O3, compiler break the code and the code runs instantly,
        // not taking account of the numbers of random number that we are generating.
        // I add this small operation to force the compiler to truly generates these random numbers.
        long long x = integerNumber - 1;


    }


    return 0;
}
