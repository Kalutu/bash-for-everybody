#!/bin/bash
# Bingo Number Generator

echo -e "\n~~ Bingo Number Generator ~~\n"

# Array to track called numbers
called_numbers=()

# Number of Bingo numbers to generate
num_of_numbers=5

for ((i = 1; i <= num_of_numbers; i++)); do
    NUMBER=$((RANDOM % 75 + 1))

    # Avoid duplicates
    while [[ " ${called_numbers[@]} " =~ " $NUMBER " ]]; do
        NUMBER=$((RANDOM % 75 + 1))
    done

    called_numbers+=($NUMBER)

    TEXT="The next number is,"
    echo $NUMBER

    if ((NUMBER <= 15)); then
        echo $TEXT B:$NUMBER
    elif ((NUMBER <= 30)); then
        echo $TEXT I:$NUMBER
    elif ((NUMBER <= 45)); then
        echo $TEXT N:$NUMBER
    elif ((NUMBER <= 60)); then
        echo $TEXT G:$NUMBER
    else
        echo $TEXT O:$NUMBER
    fi

    # Optional: Add a delay between numbers
    sleep 1
done
