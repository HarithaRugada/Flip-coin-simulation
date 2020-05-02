#! /bin/bash/ -x
echo "Program for the win of head or tail"
hwin=0
twin=0
i=0
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
if [ $hwin -gt $twin ]
then
        echo "Heads has won 21 times"
else
        echo "Tails has won 21 times"
fi
