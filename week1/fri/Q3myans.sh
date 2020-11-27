#!/usr/bin/env bash
Counter=0
while [ $Counter -lt 1000 ]; do
	echo the counter is $Counter
	let Counter=Counter+1
	sh ./Q3totest.sh > ./Q3result 2> ./Q3result
	if [[ $? -ne 0 ]]; then
		Counter >> ./Q3result
	fi	
done

