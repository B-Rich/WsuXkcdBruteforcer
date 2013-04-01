#!/bin/bash
for i in $(cat wordlist.txt)
do
	./brute $i >> results.txt
	hash=$(./brute $i)
	j=0
	for word in $hash
	do
		if [ "$j" = "2" ]; then
			echo $word
			if [ "$word" -lt "416" ];then
				echo $hash >> successes.txt
			fi
		fi
		let "j += 1"
	done
		
	#sleep 1
	#curl -F 'hashable=$i' http://almamater.xkcd.com/?edu=wsu.edu
done

