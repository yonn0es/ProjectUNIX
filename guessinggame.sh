#!/bin/bash

# Function to count the number of files in the current directory
function count_files {
    local count=$(ls -1 | wc -l)
    echo $count
}

# Function to run the guessing game
function guessing_game {
    local file_count=$(count_files)
    local user_guess=-1

    echo "Welcome to the Guessing Game!"
    echo "How many files are in the current directory?"

    while [[ $user_guess -ne $file_count ]]; do
        read -p "Enter your guess: " user_guess

        if [[ $user_guess -lt $file_count ]]; then
            echo "Too low. Try again."
        elif [[ $user_guess -gt $file_count ]]; then
            echo "Too high. Try again."
        else
            echo "Congratulations! You guessed it right."
        fi
    done
}

# Start the game
guessing_game

