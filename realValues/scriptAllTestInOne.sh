#!/bin/bash


export LD_LIBRARY_PATH=/usr/local/lib:${LD_LIBRARY_PATH}
export LIBRARY_PATH=/usr/local/lib:${LIBRARY_PATH}
export C_INCLUDE_PATH=/usr/local/include:${C_INCLUDE_PATH}

#gcc -O2 readBinaryRealMt.c -o readBinaryRealMt -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealMt) > bigCrushMtResult.txt 2>&1

#gcc -O2 readBinaryRealMrg.c -o readBinaryRealMrg -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealMrg) > bigCrushMrgResult.txt 2>&1




#gcc -I./pcg-c-0.94/include -std=c99 -L./pcg-c-0.94/src pcg64Saving.c -lpcg_random -O2 -o pcgSaving
#(time ./pcgSaving) 2> timePcgSaving.txt

#gcc -O2 readBinaryRealPcg.c -o readBinaryRealPcg -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealPcg) > bigCrushPcgResult.txt 2>&1

#sudo rm /mnt/data/pcgReal.bin


#gcc -O2 wellSaving.c -o wellSaving
#(time ./wellSaving) 2> timeWellSaving.txt

#gcc -O2 readBinaryRealWell.c -o readBinaryRealWell -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealWell) > bigCrushWellResult.txt 2>&1

#sudo rm /mnt/data/wellReal.bin

#(time python3 pythonRandomGenerationSaving.py) 2> timePythonSaving.txt

#gcc -O2 readBinaryRealPython.c -o readBinaryRealPython -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealPython) > bigCrushPythonResult.txt 2>&1

#sudo rm /mnt/data/pythonReal.bin




#(time python3 numpyRandomGenerationSaving.py) 2> timeNumpySaving.txt

#gcc -O2 readBinaryRealNumpy.c -o readBinaryRealNumpy -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealNumpy) > bigCrushNumpyResult.txt 2>&1

#sudo rm /mnt/data/numpyReal.bin



#(time python3 tensorflowRandomGenerationSaving.py) 2> timeTensorflowSaving.txt
#gcc -O2 readBinaryRealTensorflow.c -o readBinaryRealTensorflow -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealTensorflow) > bigCrushTensorflowResult.txt 2>&1
#sudo rm /mnt/data/tensorflowReal.bin


(time python3 pytorchRandomGenerationSaving.py) 2> timePytorchSaving.txt
gcc -O2 readBinaryRealPytorch.c -o readBinaryRealPytorch -ltestu01 -lprobdist -lmylib -lm
(time ./readBinaryRealPytorch) > bigCrushPytorchResult.txt 2>&1
sudo rm /mnt/data/pytorchReal.bin


#(time python3 numpyMtRandomGenerationSaving.py) 2> timeNumpyMtSaving.txt
#gcc -O2 readBinaryRealNumpyMt.c -o readBinaryRealNumpyMt -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealNumpyMt) > bigCrushNumpyMtResult.txt 2>&1
#sudo rm /mnt/data/numpyMtReal.bin

#(time python3 numpyPhiloxRandomGenerationSaving.py) 2> timeNumpyPhiloxSaving.txt
#gcc -O2 readBinaryRealNumpyPhilox.c -o readBinaryRealNumpyPhilox -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealNumpyPhilox) > bigCrushNumpyPhiloxResult.txt 2>&1
#sudo rm /mnt/data/numpyPhiloxReal.bin

#gcc -O2 mtSaving.c -o mtSaving
#(time ./mtSaving) 2> timeMtSaving.txt

#gcc -O2 mrgSaving.c -o mrgSaving
#(time ./mrgSaving) 2> timeMrgSaving.txt

















