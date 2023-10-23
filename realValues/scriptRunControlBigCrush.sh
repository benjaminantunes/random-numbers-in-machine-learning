#!/bin/bash
export LD_LIBRARY_PATH=/usr/local/lib:${LD_LIBRARY_PATH}
export LIBRARY_PATH=/usr/local/lib:${LIBRARY_PATH}
export C_INCLUDE_PATH=/usr/local/include:${C_INCLUDE_PATH}

gcc -O2 controlTestRealMrg.c -o controlTestRealMrg -ltestu01 -lprobdist -lmylib -lm
(time ./controlTestRealMrg) > bigCrushControlMrgResult.txt 2>&1

gcc -O2 controlTestRealMt.c -o controlTestRealMt -ltestu01 -lprobdist -lmylib -lm
(time ./controlTestRealMt) > bigCrushControlMtResult.txt 2>&1

gcc -O2 controlTestRealWell.c -o controlTestRealWell -ltestu01 -lprobdist -lmylib -lm
(time ./controlTestRealWell) > bigCrushControlWellResult.txt 2>&1

