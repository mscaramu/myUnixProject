#
# File: guessinggame.sh

function guessinggame {
	# assign to nf the number of file in the directory
	nf=$(ls -l | grep "^-" | wc -l)
	echo "Hello, let's play a funny game!"
	echo "How many files are there in the current directory?"
	echo "Please type the number: "
	read number
	# continue until loop is 1
	loop=1
	while [[ loop -eq 1 ]]
	do
		if [[ $number -gt $nf ]]
		then
			echo "the number inserted is bigger than the 
the number files, please try again."
			echo "Please type the number: "		
			read number
		elif [[ $number -lt $nf ]]
                then
                        echo "the number inserted is lower than the
number of files, please try again."
                	echo "Please type the number: "
                	read number
		else
			echo "Congratulation! The number inserted is 
correct!"
			# update loop to go out from the while
			let loop=0
		fi
	done
}

guessinggame
