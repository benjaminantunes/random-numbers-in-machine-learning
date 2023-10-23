#!/bin/bash


gcc mtSmallComparaison.c -o mtSmallComparaison
./mtSmallComparaison


gcc -I./pcg-c-0.94/include -std=c99 -L./pcg-c-0.94/src pcgSmallComparaison.c -lpcg_random -o pcgSmallComparaison
./pcgSmallComparaison


gcc philoxSmallComparaison.c -o philoxSmallComparaison
./philoxSmallComparaison

python3 numpyMtSmallComparaison.py
python3 numpyPhiloxSmallComparaison.py
python3 numpySmallComparaison.py
python3 pythonSmallComparaison.py
python3 pytorchSmallComparaison.py
python3 tensorflowSmallComparaison.py

