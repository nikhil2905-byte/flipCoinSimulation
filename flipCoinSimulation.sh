#!/bin/bash -x
echo "Welcome To Flip Coin Simulation"
head=1;
tail=0;
head_cnt=0
tail_cnt=0
for (( i=0; i<=21; i++ ))
do
	flipcoincheck=$((RANDOM%2));
	if [ $flipcoincheck -eq $head ];
	then
	head_cnt=$(($head_cnt+1))
	elif [ $flipcoincheck -eq $tail ]
	then
	tail_cnt=$(($tail_cnt+1))
fi
done
echo "Number Of Times Heads Won :" $head_cnt
echo "Number Of Times Tails Won :" $tail_cnt
if [ $head_cnt -eq $tail_cnt ]
then 
	echo "Tie"
elif [ $head_cnt -lt $tail_cnt ]
then
	echo "Tail wins"
	won_by=$(($tail_cnt-$head_cnt))
	echo "Tails won by:$won_by"
elif [ $head_cnt -gt $tail_cnt ]
then
        echo "Head wins"
	won_by=$(($head_cnt-$tail_cnt))
        echo "Heads won by:$won_by"
fi
