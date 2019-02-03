#!/user/bin/env bash
#file: guessinggame.sh

#This function makes you able to guess correct number of only files in current directory
function guess_count_fun {
file_count=$(ls -p|grep -v /|wc -l)
while :
do
	read guess_count
	if [[ $guess_count -gt $file_count ]]
	then
		echo "You are guessing too high..Please guess again"
		continue
	elif  [[ $guess_count -lt $file_count ]]
	then
		echo "You are guessing too low..Please guess again"
		continue
	else
		echo "Congratulation!! you have guessed correct."
		break
fi
done
}
echo "how many files are in the current directory"
#here we are calling the function guess_file_count
guess_count_fun