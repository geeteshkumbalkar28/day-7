#!/bin/bash -x
#b. Store this random numbers into a array.

for (( cnt=0; cnt<10; cnt=$((cnt+1))))
do
        Random_Values[$cnt]=$(($((RANDOM%900))+100));

done

