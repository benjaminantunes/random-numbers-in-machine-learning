#!/bin/bash

# Native experiments are too fast compared to Python experiment for the 
# same amount of generated numbers (2**30).
#So, for power consumption, I take for 4 seconds instead of for 60 seconds. Multiply by 15 to #have by minutes.

##########################################
##########################################
##########################################

# Name of the files to store results
TIME_FILE="time_results_mrg32k3aRandomGeneration.txt"
POWER_FILE="power_results_mrg32k3aRandomGeneration.txt"

# Clean any existing result files
> $TIME_FILE
> $POWER_FILE

gcc mrg32k3a.c -o executableMrg32k3a
# Repeat the process 30 times
for i in {1..30}
do
    # Measure the time using built-in time and append to time_results.txt
    (time ./executableMrg32k3a) 2>> $TIME_FILE

done


for i in {1..30}
do
    # powerjoular measures the power consumption while running example.py
    # Append the result to power_results.txt
    # $! is the PID of pythonRandomGeneration
    
    ./executableMrg32k3a &          
	PROGRAM_PID=$!          
    
	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
	POWERJOULAR_PID=$!
	sleep 4
	kill -INT $POWERJOULAR_PID
	# Wait for your_program to finish. If it finishes before 60 seconds, kill powerjoular.
	wait $PROGRAM_PID #&& kill -INT $POWERJOULAR_PID


done

############################################
############################################
############################################

# Name of the files to store results
TIME_FILE="time_results_mrg32k3aO2RandomGeneration.txt"
POWER_FILE="power_results_mrg32k3aO2RandomGeneration.txt"

# Clean any existing result files
> $TIME_FILE
> $POWER_FILE

gcc -O2 mrg32k3a.c -o executableMrg32k3aO2
# Repeat the process 30 times
for i in {1..30}
do
    # Measure the time using built-in time and append to time_results.txt
    (time ./executableMrg32k3aO2) 2>> $TIME_FILE

done


for i in {1..30}
do
    # powerjoular measures the power consumption while running example.py
    # Append the result to power_results.txt
    # $! is the PID of pythonRandomGeneration
    
    ./executableMrg32k3aO2 &          
	PROGRAM_PID=$!          
    
	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
	POWERJOULAR_PID=$!
	sleep 4
	kill -INT $POWERJOULAR_PID
	# Wait for your_program to finish. If it finishes before 60 seconds, kill powerjoular.
	wait $PROGRAM_PID #&& kill -INT $POWERJOULAR_PID


done

###########################################
###########################################
###########################################

# Name of the files to store results
TIME_FILE="time_results_mrg32k3aO3RandomGeneration.txt"
POWER_FILE="power_results_mrg32k3aO3RandomGeneration.txt"

# Clean any existing result files
> $TIME_FILE
> $POWER_FILE

gcc -O3 mrg32k3a.c -o executableMrg32k3aO3
# Repeat the process 30 times
for i in {1..30}
do
    # Measure the time using built-in time and append to time_results.txt
    (time ./executableMrg32k3aO3) 2>> $TIME_FILE

done


for i in {1..30}
do
    # powerjoular measures the power consumption while running example.py
    # Append the result to power_results.txt
    # $! is the PID of pythonRandomGeneration
    
    ./executableMrg32k3aO3 &          
	PROGRAM_PID=$!          
    
	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
	POWERJOULAR_PID=$!
	sleep 4
	kill -INT $POWERJOULAR_PID
	# Wait for your_program to finish. If it finishes before 60 seconds, kill powerjoular.
	wait $PROGRAM_PID #&& kill -INT $POWERJOULAR_PID


done

##########################################
##########################################
##########################################

# Name of the files to store results
TIME_FILE="time_results_well19937aRandomGeneration.txt"
POWER_FILE="power_results_well19937aRandomGeneration.txt"

# Clean any existing result files
> $TIME_FILE
> $POWER_FILE

gcc well19937a.c -o executableWell19937a
# Repeat the process 30 times
for i in {1..30}
do
    # Measure the time using built-in time and append to time_results.txt
    (time ./executableWell19937a) 2>> $TIME_FILE

done


for i in {1..30}
do
    # powerjoular measures the power consumption while running example.py
    # Append the result to power_results.txt
    # $! is the PID of pythonRandomGeneration
    
    ./executableWell19937a &          
	PROGRAM_PID=$!          
    
	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
	POWERJOULAR_PID=$!
	sleep 4
	kill -INT $POWERJOULAR_PID
	# Wait for your_program to finish. If it finishes before 60 seconds, kill powerjoular.
	wait $PROGRAM_PID #&& kill -INT $POWERJOULAR_PID


done

###########################################
###########################################
###########################################

# Name of the files to store results
TIME_FILE="time_results_well19937O2aRandomGeneration.txt"
POWER_FILE="power_results_well19937O2aRandomGeneration.txt"

# Clean any existing result files
> $TIME_FILE
> $POWER_FILE

gcc -O2 well19937a.c -o executableWell19937aO2
# Repeat the process 30 times
for i in {1..30}
do
    # Measure the time using built-in time and append to time_results.txt
    (time ./executableWell19937aO2) 2>> $TIME_FILE

done


for i in {1..30}
do
    # powerjoular measures the power consumption while running example.py
    # Append the result to power_results.txt
    # $! is the PID of pythonRandomGeneration
    
    ./executableWell19937aO2 &          
	PROGRAM_PID=$!          
    
	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
	POWERJOULAR_PID=$!
	sleep 4
	kill -INT $POWERJOULAR_PID
	# Wait for your_program to finish. If it finishes before 60 seconds, kill powerjoular.
	wait $PROGRAM_PID #&& kill -INT $POWERJOULAR_PID


done
###########################################
###########################################
###########################################

# Name of the files to store results
TIME_FILE="time_results_well19937O3aRandomGeneration.txt"
POWER_FILE="power_results_well19937O3aRandomGeneration.txt"

# Clean any existing result files
> $TIME_FILE
> $POWER_FILE

gcc -O3 well19937a.c -o executableWell19937aO3
# Repeat the process 30 times
for i in {1..30}
do
    # Measure the time using built-in time and append to time_results.txt
    (time ./executableWell19937aO3) 2>> $TIME_FILE

done


for i in {1..30}
do
    # powerjoular measures the power consumption while running example.py
    # Append the result to power_results.txt
    # $! is the PID of pythonRandomGeneration
    
    ./executableWell19937aO3 &          
	PROGRAM_PID=$!          
    
	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
	POWERJOULAR_PID=$!
	sleep 4
	kill -INT $POWERJOULAR_PID
	# Wait for your_program to finish. If it finishes before 60 seconds, kill powerjoular.
	wait $PROGRAM_PID #&& kill -INT $POWERJOULAR_PID


done

##########################################
##########################################
##########################################

# Name of the files to store results
TIME_FILE="time_results_mt19937arRandomGeneration.txt"
POWER_FILE="power_results_mt19937arRandomGeneration.txt"

# Clean any existing result files
> $TIME_FILE
> $POWER_FILE

gcc mt19937ar.c -o executableMt19937ar
# Repeat the process 30 times
for i in {1..30}
do
    # Measure the time using built-in time and append to time_results.txt
    (time ./executableMt19937ar) 2>> $TIME_FILE

done


for i in {1..30}
do
    # powerjoular measures the power consumption while running example.py
    # Append the result to power_results.txt
    # $! is the PID of pythonRandomGeneration
    
    ./executableMt19937ar &          
	PROGRAM_PID=$!          
    
	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
	POWERJOULAR_PID=$!
	sleep 4
	kill -INT $POWERJOULAR_PID
	# Wait for your_program to finish. If it finishes before 60 seconds, kill powerjoular.
	wait $PROGRAM_PID #&& kill -INT $POWERJOULAR_PID


done
###########################################
###########################################
###########################################

# Name of the files to store results
TIME_FILE="time_results_mt19937arO2RandomGeneration.txt"
POWER_FILE="power_results_mt19937arO2RandomGeneration.txt"

# Clean any existing result files
> $TIME_FILE
> $POWER_FILE

gcc -O2 mt19937ar.c -o executableMt19937arO2
# Repeat the process 30 times
for i in {1..30}
do
    # Measure the time using built-in time and append to time_results.txt
    (time ./executableMt19937arO2) 2>> $TIME_FILE

done


for i in {1..30}
do
    # powerjoular measures the power consumption while running example.py
    # Append the result to power_results.txt
    # $! is the PID of pythonRandomGeneration
    
    ./executableMt19937arO2 &          
	PROGRAM_PID=$!          
    
	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
	POWERJOULAR_PID=$!
	sleep 4
	kill -INT $POWERJOULAR_PID
	# Wait for your_program to finish. If it finishes before 60 seconds, kill powerjoular.
	wait $PROGRAM_PID #&& kill -INT $POWERJOULAR_PID


done
###########################################
###########################################
###########################################

# Name of the files to store results
TIME_FILE="time_results_mt19937arO3RandomGeneration.txt"
POWER_FILE="power_results_mt19937arO3RandomGeneration.txt"

# Clean any existing result files
> $TIME_FILE
> $POWER_FILE

gcc -O3 mt19937ar.c -o executableMt19937arO3
# Repeat the process 30 times
for i in {1..30}
do
    # Measure the time using built-in time and append to time_results.txt
    (time ./executableMt19937arO3) 2>> $TIME_FILE

done


for i in {1..30}
do
    # powerjoular measures the power consumption while running example.py
    # Append the result to power_results.txt
    # $! is the PID of pythonRandomGeneration
    
    ./executableMt19937arO3 &          
	PROGRAM_PID=$!          
    
	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
	POWERJOULAR_PID=$!
	sleep 4
	kill -INT $POWERJOULAR_PID
	# Wait for your_program to finish. If it finishes before 60 seconds, kill powerjoular.
	wait $PROGRAM_PID #&& kill -INT $POWERJOULAR_PID


done


###########################################
###########################################
###########################################

# Name of the files to store results
TIME_FILE="time_results_pcg64RandomGeneration.txt"
POWER_FILE="power_results_pcg64RandomGeneration.txt"

# Clean any existing result files
> $TIME_FILE
> $POWER_FILE

gcc -I./pcg-c-0.94/include -std=c99 -L./pcg-c-0.94/src pcg64-numpyDefault.c -lpcg_random -o executablePcg64
# Repeat the process 30 times
for i in {1..30}
do
    # Measure the time using built-in time and append to time_results.txt
    (time ./executablePcg64) 2>> $TIME_FILE

done


for i in {1..30}
do
    # powerjoular measures the power consumption while running example.py
    # Append the result to power_results.txt
    # $! is the PID of pythonRandomGeneration
    
    ./executablePcg64 &          
	PROGRAM_PID=$!          
    
	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
	POWERJOULAR_PID=$!
	sleep 4
	kill -INT $POWERJOULAR_PID
	# Wait for your_program to finish. If it finishes before 60 seconds, kill powerjoular.
	wait $PROGRAM_PID #&& kill -INT $POWERJOULAR_PID


done
###########################################
###########################################
###########################################

# Name of the files to store results
TIME_FILE="time_results_pcg64O2RandomGeneration.txt"
POWER_FILE="power_results_pcg64O2RandomGeneration.txt"

# Clean any existing result files
> $TIME_FILE
> $POWER_FILE

gcc -I./pcg-c-0.94/include -std=c99 -L./pcg-c-0.94/src pcg64-numpyDefault.c -lpcg_random -O2 -o executableO2Pcg64
# Repeat the process 30 times
for i in {1..30}
do
    # Measure the time using built-in time and append to time_results.txt
    (time ./executableO2Pcg64) 2>> $TIME_FILE

done


for i in {1..30}
do
    # powerjoular measures the power consumption while running example.py
    # Append the result to power_results.txt
    # $! is the PID of pythonRandomGeneration
    
    ./executableO2Pcg64 &          
	PROGRAM_PID=$!          
    
	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
	POWERJOULAR_PID=$!
	sleep 4
	kill -INT $POWERJOULAR_PID
	# Wait for your_program to finish. If it finishes before 60 seconds, kill powerjoular.
	wait $PROGRAM_PID #&& kill -INT $POWERJOULAR_PID


done
###########################################
###########################################
###########################################

# Name of the files to store results
TIME_FILE="time_results_pcg64O3RandomGeneration.txt"
POWER_FILE="power_results_pcg64O3RandomGeneration.txt"

# Clean any existing result files
> $TIME_FILE
> $POWER_FILE

gcc -I./pcg-c-0.94/include -std=c99 -L./pcg-c-0.94/src pcg64-numpyDefault.c -lpcg_random -O3 -o executableO3Pcg64
# Repeat the process 30 times
for i in {1..30}
do
    # Measure the time using built-in time and append to time_results.txt
    (time ./executableO3Pcg64) 2>> $TIME_FILE

done


for i in {1..30}
do
    # powerjoular measures the power consumption while running example.py
    # Append the result to power_results.txt
    # $! is the PID of pythonRandomGeneration
    
    ./executableO3Pcg64 &          
	PROGRAM_PID=$!          
    
	powerjoular -p $PROGRAM_PID >> $POWER_FILE &
	POWERJOULAR_PID=$!
	sleep 4
	kill -INT $POWERJOULAR_PID
	# Wait for your_program to finish. If it finishes before 60 seconds, kill powerjoular.
	wait $PROGRAM_PID #&& kill -INT $POWERJOULAR_PID


done

