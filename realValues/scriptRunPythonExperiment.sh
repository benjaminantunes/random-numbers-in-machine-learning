#!/bin/bash


#####---- ONE BY ONE prn generation ----#####

## Name of the files to store results
#TIME_FILE="time_results_pythonRandomGenerationOneByOne.txt"
#POWER_FILE="power_results_pythonRandomGenerationOneByOne.txt"

## Clean any existing result files
#> $TIME_FILE
#> $POWER_FILE

## Repeat the process 30 times
#for i in {1..30}
#do
#    # Measure the time using built-in time and append to time_results.txt
#    (time python3 pythonRandomGenerationOneByOne.py) 2>> $TIME_FILE

#done


#for i in {1..30}
#do
#    # powerjoular measures the power consumption in joule by minutes
#    # Append the result to power_results.txt
#    # $! is the PID of pythonRandomGeneration
#    
#    python3 pythonRandomGenerationOneByOne.py &          
#	PROGRAM_PID=$!          
#    
#	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
#	POWERJOULAR_PID=$!
#	sleep 30
#	kill -INT $POWERJOULAR_PID
#	kill -INT $PROGRAM_PID


#done

###########################################
###########################################
###########################################

## Name of the files to store results
#TIME_FILE="time_results_pytorchRandomGenerationOneByOne.txt"
#POWER_FILE="power_results_pytorchRandomGenerationOneByOne.txt"

## Clean any existing result files
#> $TIME_FILE
#> $POWER_FILE

## Repeat the process 30 times
#for i in {1..30}
#do
#    # Measure the time using built-in time and append to time_results.txt
#    (time python3 pytorchRandomGenerationOneByOne.py) 2>> $TIME_FILE

#done


#for i in {1..30}
#do
#    # powerjoular measures the power consumption in joule by minutes
#    # Append the result to power_results.txt

#    
#    python3 pytorchRandomGenerationOneByOne.py &          
#	PROGRAM_PID=$!          
#    
#	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
#	POWERJOULAR_PID=$!
#	sleep 30
#	kill -INT $POWERJOULAR_PID
#	kill -INT $PROGRAM_PID


#done


###########################################
###########################################
###########################################

## Name of the files to store results
#TIME_FILE="time_results_numpyRandomGenerationOneByOne.txt"
#POWER_FILE="power_results_numpyRandomGenerationOneByOne.txt"

## Clean any existing result files
#> $TIME_FILE
#> $POWER_FILE

## Repeat the process 30 times
#for i in {1..30}
#do
#    # Measure the time using built-in time and append to time_results.txt
#    (time python3 numpyRandomGenerationOneByOne.py) 2>> $TIME_FILE

#done


#for i in {1..30}
#do
#    # powerjoular measures the power consumption in joule by minutes
#    # Append the result to power_results.txt
#    
#    python3 numpyRandomGenerationOneByOne.py &          
#	PROGRAM_PID=$!          
#    
#	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
#	POWERJOULAR_PID=$!
#	sleep 30
#	kill -INT $POWERJOULAR_PID
#	kill -INT $PROGRAM_PID


#done


###########################################
###########################################
###########################################

## WARNING
#I am forced to not do this experiment : 
# For an obscure reason, it takes more than 30 hours, a lot of RAM, and so on....
# Looks like tensorflow is really not made to generate random numbers ...
# It works for 32 bits integer numbers, but not for 64 bits real [0,1] numbers
# Name of the files to store results
#TIME_FILE="time_results_tensorflowRandomGenerationOneByOne.txt"
#POWER_FILE="power_results_tensorflowRandomGenerationOneByOne.txt"

## Clean any existing result files
#> $TIME_FILE
#> $POWER_FILE

## Repeat the process 30 times
#for i in {1..30}
#do
#    # Measure the time using built-in time and append to time_results.txt
#    (time python3 tensorflowRandomGenerationOneByOne.py) 2>> $TIME_FILE

#done


#for i in {1..30}
#do
#    # powerjoular measures the power consumption in joule by minutes
#    # Append the result to power_results.txt
#    
#    python3 tensorflowRandomGenerationOneByOne.py &          
#	PROGRAM_PID=$!          
#    
#	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
#	POWERJOULAR_PID=$!
#	sleep 30
#	kill -INT $POWERJOULAR_PID
#	kill -INT $PROGRAM_PID


#done


####---- ALL AT ONCE (tensor from ML technologies) prn generation ----#####

## Name of the files to store results
#TIME_FILE="time_results_pythonRandomGenerationAtOnce.txt"
#POWER_FILE="power_results_pythonRandomGenerationAtOnce.txt"

## Clean any existing result files
#> $TIME_FILE
#> $POWER_FILE

## Repeat the process 30 times
#for i in {1..30}
#do
#    # Measure the time using built-in time and append to time_results.txt
#    (time python3 pythonRandomGenerationAtOnce.py) 2>> $TIME_FILE

#done


#for i in {1..30}
#do
#    # powerjoular measures the power consumption in joule by minutes
#    # Append the result to power_results.txt
#    
#    python3 pythonRandomGenerationAtOnce.py &          
#	PROGRAM_PID=$!          
#    
#	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
#	POWERJOULAR_PID=$!
#	sleep 4
#	kill -INT $POWERJOULAR_PID
#	kill -INT $PROGRAM_PID


#done

############################################
############################################
############################################

## Name of the files to store results
#TIME_FILE="time_results_pytorchRandomGenerationAtOnce.txt"
#POWER_FILE="power_results_pytorchRandomGenerationAtOnce.txt"

## Clean any existing result files
#> $TIME_FILE
#> $POWER_FILE

## Repeat the process 30 times
#for i in {1..30}
#do
#    # Measure the time using built-in time and append to time_results.txt
#    (time python3 pytorchRandomGenerationAtOnce.py) 2>> $TIME_FILE

#done


#for i in {1..30}
#do
#    # powerjoular measures the power consumption in joule by minutes
#    # Append the result to power_results.txt
#    
#    python3 pytorchRandomGenerationAtOnce.py &          
#	PROGRAM_PID=$!          
#    
#	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
#	POWERJOULAR_PID=$!
#	sleep 4
#	kill -INT $POWERJOULAR_PID
#	kill -INT $PROGRAM_PID


#done


############################################
############################################
############################################

## Name of the files to store results
#TIME_FILE="time_results_numpyRandomGenerationAtOnce.txt"
#POWER_FILE="power_results_numpyRandomGenerationAtOnce.txt"

## Clean any existing result files
#> $TIME_FILE
#> $POWER_FILE

## Repeat the process 30 times
#for i in {1..30}
#do
#    # Measure the time using built-in time and append to time_results.txt
#    (time python3 numpyRandomGenerationAtOnce.py) 2>> $TIME_FILE

#done


#for i in {1..30}
#do
#    # powerjoular measures the power consumption in joule by minutes
#    # Append the result to power_results.txt
#    
#    python3 numpyRandomGenerationAtOnce.py &          
#	PROGRAM_PID=$!          

#	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
#	POWERJOULAR_PID=$!
#	sleep 4
#	kill -INT $POWERJOULAR_PID
#	kill -INT $PROGRAM_PID


#done


############################################
############################################
############################################

# Name of the files to store results
TIME_FILE="time_results_tensorflowRandomGenerationAtOnce.txt"
POWER_FILE="power_results_tensorflowRandomGenerationAtOnce.txt"

# Clean any existing result files
> $TIME_FILE
> $POWER_FILE

# Repeat the process 30 times
for i in {1..30}
do
    # Measure the time using built-in time and append to time_results.txt
    (time python3 tensorflowRandomGenerationAtOnce.py) 2>> $TIME_FILE

done


for i in {1..30}
do
    # powerjoular measures the power consumption in joule by minutes
    # Append the result to power_results.txt
    
    python3 tensorflowRandomGenerationAtOnce.py &          
	PROGRAM_PID=$!          
    
	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
	POWERJOULAR_PID=$!
	sleep 4
	kill -INT $POWERJOULAR_PID
	kill -INT $PROGRAM_PID


done

####---- ALL AT ONCE (tensor from ML technologies) prn generation TASKSET ----#####

## Name of the files to store results
#TIME_FILE="time_results_pythonTasksetRandomGenerationAtOnce.txt"
#POWER_FILE="power_results_pythonTasksetRandomGenerationAtOnce.txt"

## Clean any existing result files
#> $TIME_FILE
#> $POWER_FILE

## Repeat the process 30 times
#for i in {1..30}
#do
#    # Measure the time using built-in time and append to time_results.txt
#    (time taskset -c 100 python3 pythonRandomGenerationAtOnce.py) 2>> $TIME_FILE

#done


#for i in {1..30}
#do
#    # powerjoular measures the power consumption in joule by minutes
#    # Append the result to power_results.txt
#    
#    (taskset -c 100 python3 pythonRandomGenerationAtOnce.py) &          
#	PROGRAM_PID=$!          
#    
#	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
#	POWERJOULAR_PID=$!
#	sleep 4
#	kill -INT $POWERJOULAR_PID
#	kill -INT $PROGRAM_PID


#done

###########################################
###########################################
###########################################

## Name of the files to store results
#TIME_FILE="time_results_pytorchTasksetRandomGenerationAtOnce.txt"
#POWER_FILE="power_results_pytorchTasksetRandomGenerationAtOnce.txt"

### Clean any existing result files
##> $TIME_FILE
#> $POWER_FILE

### Repeat the process 30 times
##for i in {1..30}
##do
##    # Measure the time using built-in time and append to time_results.txt
##    (time taskset -c 100 python3 pytorchRandomGenerationAtOnce.py) 2>> $TIME_FILE

##done


#for i in {1..30}
#do
#    # powerjoular measures the power consumption in joule by minutes
#    # Append the result to power_results.txt
#    
#    (taskset -c 100 python3 pytorchRandomGenerationAtOnce.py) &          
#	PROGRAM_PID=$!          
#    
#	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
#	POWERJOULAR_PID=$!
#	sleep 4
#	kill -INT $POWERJOULAR_PID
#	kill -KILL $PROGRAM_PID


#done


############################################
############################################
############################################

## Name of the files to store results
##TIME_FILE="time_results_numpyTasksetRandomGenerationAtOnce.txt"
#POWER_FILE="power_results_numpyTasksetRandomGenerationAtOnce.txt"

## Clean any existing result files
##> $TIME_FILE
#> $POWER_FILE

## Repeat the process 30 times
##for i in {1..30}
##do
##    # Measure the time using built-in time and append to time_results.txt
##    (time taskset -c 100 python3 numpyRandomGenerationAtOnce.py) 2>> $TIME_FILE

##done


#for i in {1..30}
#do
#    # powerjoular measures the power consumption in joule by minutes
#    # Append the result to power_results.txt
#    
#    (taskset -c 100 python3 numpyRandomGenerationAtOnce.py) &          
#	PROGRAM_PID=$!          

#	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
#	POWERJOULAR_PID=$!
#	sleep 4
#	kill -INT $POWERJOULAR_PID
#	kill -KILL $PROGRAM_PID


#done


############################################
############################################
############################################

# Name of the files to store results
TIME_FILE="time_results_tensorflowTasksetRandomGenerationAtOnce.txt"
POWER_FILE="power_results_tensorflowTasksetRandomGenerationAtOnce.txt"

# Clean any existing result files
> $TIME_FILE
> $POWER_FILE

# Repeat the process 30 times
for i in {1..30}
do
    # Measure the time using built-in time and append to time_results.txt
    (time taskset -c 100 python3 tensorflowRandomGenerationAtOnce.py) 2>> $TIME_FILE

done


for i in {1..30}
do
    # powerjoular measures the power consumption in joule by minutes
    # Append the result to power_results.txt
    
    (taskset -c 100 python3 tensorflowRandomGenerationAtOnce.py) &          
	PROGRAM_PID=$!          
    
	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
	POWERJOULAR_PID=$!
	sleep 4
	kill -INT $POWERJOULAR_PID
	kill -KILL $PROGRAM_PID


done

####################
#####################
######################
#########################

## Name of the files to store results
#TIME_FILE="time_results_numpyMtRandomGenerationAtOnce.txt"
#POWER_FILE="power_results_numpyMtRandomGenerationAtOnce.txt"

## Clean any existing result files
#> $TIME_FILE
#> $POWER_FILE

## Repeat the process 30 times
#for i in {1..30}
#do
#    # Measure the time using built-in time and append to time_results.txt
#    (time python3 numpyMtRandomGenerationAtOnce.py) 2>> $TIME_FILE

#done


#for i in {1..30}
#do
#    # powerjoular measures the power consumption in joule by minutes
#    # Append the result to power_results.txt
#    
#    python3 numpyMtRandomGenerationAtOnce.py &          
#	PROGRAM_PID=$!          

#	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
#	POWERJOULAR_PID=$!
#	sleep 4
#	kill -INT $POWERJOULAR_PID
#	kill -INT $PROGRAM_PID


#done


## Name of the files to store results
#TIME_FILE="time_results_numpyPhiloxRandomGenerationAtOnce.txt"
#POWER_FILE="power_results_numpyPhiloxRandomGenerationAtOnce.txt"

## Clean any existing result files
#> $TIME_FILE
#> $POWER_FILE

## Repeat the process 30 times
#for i in {1..30}
#do
#    # Measure the time using built-in time and append to time_results.txt
#    (time python3 numpyPhiloxRandomGenerationAtOnce.py) 2>> $TIME_FILE

#done


#for i in {1..30}
#do
#    # powerjoular measures the power consumption in joule by minutes
#    # Append the result to power_results.txt
#    
#    python3 numpyPhiloxRandomGenerationAtOnce.py &          
#	PROGRAM_PID=$!          

#	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
#	POWERJOULAR_PID=$!
#	sleep 4
#	kill -INT $POWERJOULAR_PID
#	kill -INT $PROGRAM_PID


#done

## Name of the files to store results
#TIME_FILE="time_results_numpyMtRandomGenerationOneByOne.txt"
#POWER_FILE="power_results_numpyMtRandomGenerationOneByOne.txt"

## Clean any existing result files
#> $TIME_FILE
#> $POWER_FILE

## Repeat the process 30 times
#for i in {1..30}
#do
#    # Measure the time using built-in time and append to time_results.txt
#    (time python3 numpyMtRandomGenerationOneByOne.py) 2>> $TIME_FILE

#done


#for i in {1..30}
#do
#    # powerjoular measures the power consumption in joule by minutes
#    # Append the result to power_results.txt
#    
#    python3 numpyMtRandomGenerationOneByOne.py &          
#	PROGRAM_PID=$!          
#    
#	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
#	POWERJOULAR_PID=$!
#	sleep 30
#	kill -INT $POWERJOULAR_PID
#	kill -INT $PROGRAM_PID


#done


## Name of the files to store results
#TIME_FILE="time_results_numpyPhiloxRandomGenerationOneByOne.txt"
#POWER_FILE="power_results_numpyPhiloxRandomGenerationOneByOne.txt"

## Clean any existing result files
#> $TIME_FILE
#> $POWER_FILE

## Repeat the process 30 times
#for i in {1..30}
#do
#    # Measure the time using built-in time and append to time_results.txt
#    (time python3 numpyPhiloxRandomGenerationOneByOne.py) 2>> $TIME_FILE

#done


#for i in {1..30}
#do
#    # powerjoular measures the power consumption in joule by minutes
#    # Append the result to power_results.txt
#    
#    python3 numpyPhiloxRandomGenerationOneByOne.py &          
#	PROGRAM_PID=$!          
#    
#	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
#	POWERJOULAR_PID=$!
#	sleep 30
#	kill -INT $POWERJOULAR_PID
#	kill -INT $PROGRAM_PID


#done

