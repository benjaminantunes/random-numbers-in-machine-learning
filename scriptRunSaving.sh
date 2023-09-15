#!/bin/bash

#gcc -O2 mtSaving.c -o mtSaving
#(time ./mtSaving) 2> timeMtSaving.txt

#gcc -O2 mrgSaving.c -o mrgSaving
#(time ./mrgSaving) 2> timeMrgSaving.txt

gcc -O2 wellSaving.c -o wellSaving
(time ./wellSaving) 2> timeWellSaving.txt

#gcc -I./pcg-c-0.94/include -std=c99 -L./pcg-c-0.94/src pcg64Saving.c -lpcg_random -O2 -o pcgSaving
#(time ./pcgSaving) 2> timePcgSaving.txt

#(time python3 pythonRandomGenerationSaving.py) 2> timePythonSaving.txt

#(time python3 numpyRandomGenerationSaving.py) 2> timeNumpySaving.txt

#(time python3 pytorchRandomGenerationSaving.py) 2> timePytorchSaving.txt

#(time python3 tensorflowRandomGenerationSaving.py) 2> timeTensorflowSaving.txt

#(time python3 numpyMtRandomGenerationSaving.py) 2> timeNumpyMtSaving.txt

#(time python3 numpyPhiloxRandomGenerationSaving.py) 2> timeNumpyPhiloxSaving.txt






