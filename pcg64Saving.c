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

int main(int argc, char** argv)
{

    
    
    FILE *file = fopen("/mnt/data/pcgReal.bin", "wb");
    if (file == NULL) {
        fprintf(stderr, "Couldn't open file for writing.\n");
        exit(1);
    }
    
    pcg64_random_t rng;


    pcg64_srandom_r(&rng, 0, 0);



    unsigned long long times = 1ULL << 39; // 2^39

    for (unsigned long long i = 0; i < times; i++) {
        /* Make some 64-bit numbers */
        unsigned long integerNumber = pcg64_random_r(&rng);
        double d = ldexp(integerNumber, -64);
        fwrite(&d, sizeof(double), 1, file);

    }


    fclose(file);

    return 0;
}
