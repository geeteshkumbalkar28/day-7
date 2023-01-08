#!/bin/bash -x
#Extend the above program to sort the array and then find the 2nd largest
#and the 2nd smallest element.

for (( cnt=0; $cnt<10; cnt=$((cnt+1))))
do
        Random_Values[$cnt]=$(($((RANDOM%900))+100));
	
done
echo "Array without sort"
echo ${Random_Values[*]}

Max=${Random_Values[0]}
Min=${Random_Values[0]}

for (( Cnt=0; $Cnt<10; Cnt=$((Cnt+1))))
do 
	if (( $Max<${Random_Values[$Cnt]} )) 
	then
		Max=${Random_Values[$Cnt]}
	fi
	 if (( $Min>${Random_Values[$Cnt]} ))
        then
               Min=${Random_Values[$Cnt]}
        fi

done

# This loop to sort the array

for (( iCnt=0; $iCnt<10; iCnt=$((iCnt+1))))
do
	for (( jCnt=0;jCnt<9;jCnt++ ))
	do

	
	if (( ${Random_Values[$jCnt]} > ${Random_Values[$((jCnt+1))]} ))
	then
		temp=${Random_Values[$jCnt]}
		Random_Values[$jCnt]=${Random_Values[$((jCnt+1))]}
		Random_Values[$((jCnt+1))]=$temp
		
	fi
	done
done
echo "array with sort"
echo ${Random_Values[*]}

Max2=$Min
Min2=$Max
for (( CNt=0; $CNt<10; CNt=$((CNt+1))))
do
        if (( $Max2<${Random_Values[$CNt]} && $Max!=${Random_Values[$CNt]} ))
        then
		Max2=${Random_Values[$CNt]}
	fi
        if (( $Min2>${Random_Values[$CNt]} && $Min!=${Random_Values[$CNt]} ))
        then
               Min2=${Random_Values[$CNt]}
        fi

done

echo "the 2nd largest no is : $Max2"
echo "the 2nd smallest no is : $Min2"
