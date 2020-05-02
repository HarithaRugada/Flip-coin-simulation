#! /bin/bash/ -x
echo "Program for the win of head or tail"
random=$RANDOM
flip=$(( $random%2 ))
if [ $flip -eq 1 ]
then
	echo "Heads"
else
	echo "Tails"
fi
