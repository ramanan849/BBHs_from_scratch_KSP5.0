# lukog
#!/bin/bash
j=$RANDOM
for (( i=1; i<=10; i++ ))
do
    ./COMPAS --random-seed $j -n 10000 -c set-$i  &
    j=$((j+100001))
done

python3 h5copy.py set-1/COMPAS_Output.h5 set-2/COMPAS_Output.h5 set-3/COMPAS_Output.h5 set-4/COMPAS_Output.h5 set-5/COMPAS_Output.h5 set-6/COMPAS_Output.h5 set-7/COMPAS_Output.h5 set-8/COMPAS_Output.h5 set-9/COMPAS_Output.h5 set-10/COMPAS_Output.h5 -o Task-4-dune.h5