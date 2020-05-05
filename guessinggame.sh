#!/usr/bin/env bash
# File: guessinggame.sh

number_of_files=$(ls -1 | wc -l)
is_correct=0

function is_answer_correct {
  if [[ $1 -eq $number_of_files ]]
  then
    echo "Congratulations, you're right!"
    is_correct=1
  elif [[ $1 -gt $number_of_files ]]
  then
    echo "It's too high, try again"
  elif [[ $1 -lt $number_of_files ]]
  then
    echo "It's too low, try again"
  else
    echo "This shouldn't happened"
  fi
}

while [[ $is_correct -eq 0 ]]
do
  echo "Guess how many files are in the current directory?"
  read answer
  is_answer_correct $answer
done

