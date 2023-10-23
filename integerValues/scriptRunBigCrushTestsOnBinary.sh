#!/bin/bash


export LD_LIBRARY_PATH=/usr/local/lib:${LD_LIBRARY_PATH}
export LIBRARY_PATH=/usr/local/lib:${LIBRARY_PATH}
export C_INCLUDE_PATH=/usr/local/include:${C_INCLUDE_PATH}

#gcc -O2 readBinaryRealMt.c -o readBinaryRealMt -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealMt) > bigCrushMtResult.txt 2>&1

#gcc -O2 readBinaryRealMrg.c -o readBinaryRealMrg -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealMrg) > bigCrushMrgResult.txt 2>&1

gcc -O2 readBinaryRealWell.c -o readBinaryRealWell -ltestu01 -lprobdist -lmylib -lm
(time ./readBinaryRealWell) > bigCrushWellResult.txt 2>&1

#gcc -O2 readBinaryRealPcg.c -o readBinaryRealPcg -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryPcg) > bigCrushPcgResult.txt 2>&1

#gcc -O2 readBinaryRealPython.c -o readBinaryRealPython -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealPython) > bigCrushPythonResult.txt 2>&1

#gcc -O2 readBinaryRealNumpy.c -o readBinaryRealNumpy -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealNumpy) > bigCrushNumpyResult.txt 2>&1

#gcc -O2 readBinaryRealTensorflow.c -o readBinaryRealTensorflow -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealTensorflow) > bigCrushTensorflowResult.txt 2>&1

#gcc -O2 readBinaryRealPytorch.c -o readBinaryRealPytorch -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealPytorch) > bigCrushPytorchResult.txt 2>&1

#gcc -O2 readBinaryRealNumpyMt.c -o readBinaryRealNumpyMt -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealNumpyMt) > bigCrushNumpyMtResult.txt 2>&1

#gcc -O2 readBinaryRealNumpyPhilox.c -o readBinaryRealNumpyPhilox -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealNumpyPhilox) > bigCrushNumpyPhiloxResult.txt 2>&1

