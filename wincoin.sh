#! /bin/bash/ -x
echo "Program for the win of head or tail"
hwin=0
twin=0
for(( i=0; i<10; i++ ))
do
	random=$RANDOM
	flip=$(( $random%2 ))
	if [ $flip -eq 1 ]
	then
		echo "Heads"
		hwin=$(( $hwin+1 ))
	else
		echo "Tails"
		twin=$(( $twin+1 ))
	fi
done
echo "head win > "$hwin
echo "tail win > "$twin
