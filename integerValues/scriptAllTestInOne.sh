#!/bin/bash


#gcc -O2 readBinaryRealMrg.c -o readBinaryRealMrg -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealMrg) > bigCrushMrgResult.txt 2>&1


export LD_LIBRARY_PATH=/usr/local/lib:${LD_LIBRARY_PATH}
export LIBRARY_PATH=/usr/local/lib:${LIBRARY_PATH}
export C_INCLUDE_PATH=/usr/local/include:${C_INCLUDE_PATH}

#gcc -O2 mtSaving.c -o mtSaving
#(time ./mtSaving) 2> timeIntegerMtSaving.txt

#gcc -O2 readBinaryRealMt.c -o readBinaryRealMt -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealMt) > bigCrushIntegerMtResult.txt 2>&1

#sudo rm /mnt/data/mtReal.bin

#gcc -O2 philoxSaving.c -o philoxSaving
#(time ./philoxSaving) 2> timeIntegerPhiloxSaving.txt

#gcc -O2 readBinaryRealPhilox.c -o readBinaryRealPhilox -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealPhilox) > bigCrushIntegerPhiloxResult.txt 2>&1

#sudo rm /mnt/data/philoxReal.bin

#gcc -I./pcg-c-0.94/include -std=c99 -L./pcg-c-0.94/src pcg64Saving.c -lpcg_random -O2 -o pcgSaving
#(time ./pcgSaving) 2> timeIntegerPcgSaving.txt

#gcc -O2 readBinaryRealPcg.c -o readBinaryRealPcg -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealPcg) > bigCrushIntegerPcgResult.txt 2>&1

#sudo rm /mnt/data/pcgReal.bin


##gcc -O2 wellSaving.c -o wellSaving
##(time ./wellSaving) 2> timeWellSaving.txt

##gcc -O2 readBinaryRealWell.c -o readBinaryRealWell -ltestu01 -lprobdist -lmylib -lm
##(time ./readBinaryRealWell) > bigCrushWellResult.txt 2>&1

##sudo rm /mnt/data/wellReal.bin

(time python3 pythonRandomGenerationSaving.py) 2> timeIntegerPythonSaving.txt

gcc -O2 readBinaryRealPython.c -o readBinaryRealPython -ltestu01 -lprobdist -lmylib -lm
(time ./readBinaryRealPython) > bigCrushIntegerPythonResult.txt 2>&1

sudo rm /mnt/data/pythonReal.bin




(time python3 numpyRandomGenerationSaving.py) 2> timeIntegerNumpySaving.txt

gcc -O2 readBinaryRealNumpy.c -o readBinaryRealNumpy -ltestu01 -lprobdist -lmylib -lm
(time ./readBinaryRealNumpy) > bigCrushIntegerNumpyResult.txt 2>&1

sudo rm /mnt/data/numpyReal.bin



#(time python3 tensorflowRandomGenerationSaving.py) 2> timeIntegerTensorflowSaving.txt
#gcc -O2 readBinaryRealTensorflow.c -o readBinaryRealTensorflow -ltestu01 -lprobdist -lmylib -lm
#(time ./readBinaryRealTensorflow) > bigCrushIntegerTensorflowResult.txt 2>&1
#sudo rm /mnt/data/tensorflowReal.bin


(time python3 pytorchRandomGenerationSaving.py) 2> timeIntegerPytorchSaving.txt
gcc -O2 readBinaryRealPytorch.c -o readBinaryRealPytorch -ltestu01 -lprobdist -lmylib -lm
(time ./readBinaryRealPytorch) > bigCrushIntegerPytorchResult.txt 2>&1
sudo rm /mnt/data/pytorchReal.bin


(time python3 numpyMtRandomGenerationSaving.py) 2> timeIntegerNumpyMtSaving.txt
gcc -O2 readBinaryRealNumpyMt.c -o readBinaryRealNumpyMt -ltestu01 -lprobdist -lmylib -lm
(time ./readBinaryRealNumpyMt) > bigCrushIntegerNumpyMtResult.txt 2>&1
sudo rm /mnt/data/numpyMtReal.bin

(time python3 numpyPhiloxRandomGenerationSaving.py) 2> timeIntegerNumpyPhiloxSaving.txt
gcc -O2 readBinaryRealNumpyPhilox.c -o readBinaryRealNumpyPhilox -ltestu01 -lprobdist -lmylib -lm
(time ./readBinaryRealNumpyPhilox) > bigCrushIntegerNumpyPhiloxResult.txt 2>&1
sudo rm /mnt/data/numpyPhiloxReal.bin



















