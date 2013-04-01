#!/bin/bash
for i in $(cat wordlist.txt)
do
	#./brute $i >> results.txt
	hash=$(./brute $i)
	j=0
	for word in $hash
	do
		if [ "$j" = "2" ]; then
			echo $word
			if [ "$word" -lt "415" ];then
				echo $hash >> successes.txt
				printf '/7' #play a sound
			fi
		fi
		let "j += 1"
	done
		
	#sleep 1
	#curl -F 'hashable=$i' http://almamater.xkcd.com/?edu=wsu.edu
done

