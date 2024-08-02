# script for the third run of 1 million binaries with custom parameters - part 1
#!/bin/bash
j=11040 # 11040 is the random seed - gen 1 for run 
mkdir ./data-one-million-binaries/run3/
sleep 2
echo 'boom chaka chaka boom'
sleep 2
for (( i=1; i<=10; i++ ))
do
    ./COMPAS --random-seed $j -n 10000 --initial-mass-min 50 -c set-$i  -o ./data-one-million-binaries/run3/ &
    j=$((j+10000))
done

