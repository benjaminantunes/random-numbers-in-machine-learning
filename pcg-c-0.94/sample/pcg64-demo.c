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

    pcg64_random_t rng;

    // You should *always* seed the RNG.  The usual time to do it is the
    // point in time when you create RNG (typically at the beginning of the
    // program).
    //
    // pcg64_srandom_r takes two 128-bit constants (the initial state, and the
    // rng sequence selector; rngs with different sequence selectors will
    // *never* have random sequences that coincide, at all) - the code below
    // shows three possible ways to do so.

    // Seed with a fixed constant

    pcg64_srandom_r(&rng, 0, 0);


    printf("pcg64_random_r:\n"
           "      -  result:      64-bit unsigned int (uint64_t)\n"
           "      -  period:      2^128   (* 2^127 streams)\n"
           "      -  state type:  pcg64_random_t (%zu bytes)\n"
           "      -  output func: XSL-RR\n"
           "\n",
           sizeof(pcg64_random_t));

    unsigned long long times = 1ULL << 30; // 2^30

    for (unsigned long long i = 0; i < times; i++) {
        /* Make some 64-bit numbers */
        unsigned long integerNumber = pcg64_random_r(&rng);
        printf(" %lu \n", integerNumber);
        
        //Getting real [0;1] number from PCG is not as easy as other PRNGs
        /*
        Source : https://www.pcg-random.org/using-pcg-c-basic.html#generating-doubles
        Like the Unix rand and random facilites, this library does not provide a direct facility to generate floating point random numbers. It turns out that generating random floating point values is surprisingly challenging. If you are happy to have a floating point value in the range [0,1) that has been rounded down to the nearest multiple of 1/232, you can use

        double d = ldexp(pcg32_random_r(&myrng), -32);

        (Or, you can analogously use a 64-bit generator if 32-bits of resolution are not enough—the code in code in pcg32x2-demo.c shows an example of ganging together two independent 32-bit RNGs to make a 64-bit RNG; the full library provides 64-bit RNGs directly.)
        
        
        */
        double d = ldexp(integerNumber, -64);
        printf(" %lf \n", d);

    }

    return 0;
}
