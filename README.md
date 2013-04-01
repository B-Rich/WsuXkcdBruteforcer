Okay so to get this working to first need to go to this place and install PySkein

http://pythonhosted.org/pyskein/

You will need python 3.2 or above to do so.

now in order to run the script you just need to type ./bruteforce.sh, note that you need to have a wordlist called wordlist.txt. I included one but you shoudl find your own because I already brute forced most of it. The algorithm will automatically store any hashes that get under the current record as of 4:24pm of 416 in a file called successes.txt

TODO:
	Automatically upload words that break our current record
	Check and update our current record given 
	Make it more efficient
	Make it run on GPUs 

