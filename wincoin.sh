#! /bin/bash/
echo "Program for the win of head or tail"
hwin=0
twin=0
i=1
while [ $hwin -lt 21 ] && [ $twin -lt 21 ]
do
	random=$RANDOM
	flip[$i]=$(( $random%2 ))
	if [ ${flip[$i]} -eq 1 ]
	then
		hwin=$(( $hwin+1 ))
	else
		twin=$(( $twin+1 ))
	fi
	i=$(( $i+1 ))
done
if [ $hwin -eq $twin ]
then
	while [ $(( $hwin-$twin )) -eq 2 ]
	do
		i=$(( $i+1 ))
		flip[$i]=$(( $RANDOM%2 ))
		if [ ${flip[$i]} -eq 1 ]
	        then
        	        hwin=$(( $hwin+1 ))
        	else
                	twin=$(( $twin+1 ))
        	fi
	done
fi
if [ $hwin -gt $twin ]
then
	echo "Head win"
else
	echo "Tail win"
fi
echo "Heads win > " $hwin
echo "Tails win > "$twin
echo "Total turns > "$(( $i-1 ))
